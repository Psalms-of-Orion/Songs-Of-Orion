// This machine turn aetherium crystals into liquid aetherium and put it in a bidon connected to it.
/obj/machinery/aetherium_analyzer
	name = "liquid aetherium analyzer"
	desc = "Analyze & Consume liquid aetherium to produce research points."
	icon = 'icons/obj/genetics/dna_machine_samples.dmi'
	icon_state = "dna_machine"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_ALL_MOB_LAYER
	use_power = IDLE_POWER_USE
	anchor_type = /obj/structure/reagent_dispensers/bidon
	anchor_direction = WEST
	circuit = /obj/item/electronics/circuitboard/aetherium_analyzer
	var/obj/structure/reagent_dispensers/bidon/Container
	var/point_worth = 10 // How many points is each unit of liquid aetherium worth. Currently, combined with the refinery's rate, it is 100 points per raw crystal
	var/consume_rate = 5 // How many liquid aetherium is used every tick while active.
	var/analyzing = FALSE // Are we currently turning Liquid A into points?
	var/points = 0 // How many points do we have stored

/obj/machinery/aetherium_analyzer/New()
	..()
	STOP_PROCESSING(SSmachines, src)

/obj/machinery/aetherium_analyzer/examine(mob/user)
	..()
	if(isghost(user))
		interact(user)

/obj/machinery/aetherium_analyzer/attackby(obj/item/I, mob/user)

	if(default_deconstruction(I, user))
		return

	if(default_part_replacement(I, user))
		return

	..()

	updateDialog()

/obj/machinery/aetherium_analyzer/RefreshParts()
	var/man_rating = 0
	var/man_amount = 0
	for(var/obj/item/stock_parts/manipulator/M in component_parts)
		man_rating += M.rating
		man_amount++
	man_rating /= man_amount

	point_worth = initial(point_worth) * man_rating // 10 points at T1, 20 points at T2, 30 points at T3, e.t.c.

	var/mb_rating = 0
	var/mb_amount = 0
	for(var/obj/item/stock_parts/matter_bin/MB in component_parts)
		mb_rating += MB.rating
		mb_amount++
	mb_rating /= mb_amount

	consume_rate = initial(consume_rate) * mb_rating

	updateDialog()

/obj/machinery/aetherium_analyzer/attack_hand(mob/user as mob)
	interact(user)
	return

// Return the amount of aetherium the bidon has.
/obj/machinery/aetherium_analyzer/proc/get_bidon_aetherium()
	return Container?.reagents.get_reagent_amount(MATERIAL_AETHERIUM)

// Check if we have at least [amount] amount of liquid aetherium. It is different from get_bidon_aetherium() in that it only return TRUE or FALSE, and not the quantity of aetherium we have
/obj/machinery/aetherium_analyzer/proc/check_bidon_aetherium(var/amount)
	return Container?.reagents.has_reagent(MATERIAL_AETHERIUM, amount)

// Use [amount] of liquid aetherium
/obj/machinery/aetherium_analyzer/proc/use_bidon_aetherium(var/amount)
	return check_bidon_aetherium(amount) ? Container?.reagents.remove_reagent(MATERIAL_AETHERIUM, amount) : 0

// This proc search for nearby anchored BIDONS
/obj/machinery/aetherium_analyzer/proc/search_bidons()
	for(var/obj/structure/reagent_dispensers/bidon/B in range(1, src))
		if(B.anchored_machine == src)
			Container = B
			return
	Container = null // This should only happen if there was no anchored BIDONs nearby

/obj/machinery/aetherium_analyzer/proc/start_analyze()
	START_PROCESSING(SSmachines, src)
	analyzing = TRUE
	updateDialog()

/obj/machinery/aetherium_analyzer/Process()
	if(use_bidon_aetherium(consume_rate))
		points += consume_rate * point_worth
	else
		ping("Error : Ran out of Liquid Aetherium.")
		stop_analyze()
	updateDialog()

/obj/machinery/aetherium_analyzer/proc/stop_analyze()
	STOP_PROCESSING(SSmachines, src)
	analyzing = FALSE
	for(var/obj/machinery/computer/rdconsole/RD in GLOB.computer_list) // Check every RnD computer in existance
		if(RD.id == 1) // only core gets the science
			RD.files.research_points += points // Give the points
			var/obj/item/device/radio/radio = new /obj/item/device/radio{channels=list("Science")}(src) // Create a new radio
			radio.autosay("Liquid Aetherium Sample analyze completed. Transfering [points] research points to primary console.", src.name, "Science") // Make the radio say a message.
			spawn(1) qdel(radio)
			points = 0 // No more points to give
			break

	updateDialog()

/obj/machinery/aetherium_analyzer/interact(mob/user as mob)
	if((get_dist(src, user) > 1) || (stat & (BROKEN|NOPOWER)))
		if(!isAI(user) && !isghost(user))
			user.unset_machine()
			user << browse(null, "window=AetheriumAnalyzer")
			return

	search_bidons()

	user.set_machine(src)

	var/dat = ""
	dat += "<head><title>Liquid Aetherium Analyzer</title></head>"
	dat += "Liquid Aetherium Analyzer<BR>"
	dat += "<A href='?src=\ref[src];close=1'>Close</A><BR>"
	dat += "<A href='?src=\ref[src];refresh=1'>Refresh</A><BR><BR>"
	if(Container)
		dat += "Current quantity of liquid aetherium : [get_bidon_aetherium()].<BR><BR>"
		if(!analyzing)
			dat += "<A href='?src=\ref[src];start=1'>Start Analyzing.</A><BR><BR>"
		else
			dat += "Analyzing aetherium sample...<BR>"
			dat += "Current stored points : [points].<BR>"
			dat += "<A href='?src=\ref[src];stop=1'>Stop Analyzing.</A><BR>"
	else
		dat += "No bidon detected. Please connect a bidon."

	user << browse(dat, "window=AetheriumAnalyzer")
	onclose(user, "AetheriumAnalyzer")
	return

/obj/machinery/aetherium_analyzer/Topic(href, href_list)
	if(isghost(usr)) // Ghosts can't do shit
		return

	//Ignore input if we are broken or guy is not touching us, AI can control from a ways away
	if(stat & (BROKEN|NOPOWER) || (get_dist(src, usr) > 1 && !isAI(usr)))
		usr.unset_machine()
		usr << browse(null, "window=AetheriumAnalyzer")
		return

	..()

	if(href_list["close"])
		usr << browse(null, "window=AetheriumAnalyzer")
		usr.unset_machine()
		return

	if(href_list["start"])
		start_analyze()

	if(href_list["stop"])
		stop_analyze()

	updateDialog()
	return

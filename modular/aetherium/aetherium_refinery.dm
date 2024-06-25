// This machine turn aetherium crystals into liquid aetherium and put it in a bidon connected to it.
/obj/machinery/aetherium_refinery
	name = "aetherium refinery"
	desc = "Refine raw aetherium crystals into liquid aetherium for further processing."
	icon = 'icons/obj/machines/aetherium_refinery.dmi'
	icon_state = "refinery_base"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_ALL_MOB_LAYER
	use_power = IDLE_POWER_USE
	anchor_type = /obj/structure/reagent_dispensers/bidon
	anchor_direction = WEST
	circuit = /obj/item/electronics/circuitboard/aetherium_refinery
	frame_type = FRAME_VERTICAL
	var/obj/structure/reagent_dispensers/bidon/Container
	var/crystal_worth = 10 // How much liquid aetherium is each solid crystal worth.

/obj/machinery/aetherium_refinery/New()
	..()
	create_reagents(6000)
	update_icon()

/obj/machinery/aetherium_refinery/update_icon()
	cut_overlays()
	overlays += "liquid_overlay"
	overlays += "refinery_top"
	overlays += "glass_overlay"

/obj/machinery/aetherium_refinery/examine(mob/user)
	..()
	if(isghost(user))
		interact(user)

/obj/machinery/aetherium_refinery/attackby(obj/item/I, mob/user)

	if(default_deconstruction(I, user))
		return

	if(default_part_replacement(I, user))
		return

	if(istype(I, /obj/item/stack/material/aetherium))
		insert_item(I, user)

	updateDialog()

/obj/machinery/aetherium_refinery/on_deconstruction()
	var/obj/structure/reagent_dispensers/bidon/Bidon = locate() in component_parts
	if(Bidon && reagents.total_volume)
		reagents.trans_to_holder(Bidon.reagents, reagents.total_volume)
		Bidon.update_icon()
	remove_crystals(get_solid_aetherium()) // Eject all the crystals left in the refinery

/obj/machinery/aetherium_refinery/RefreshParts()
	var/obj/structure/reagent_dispensers/bidon/Bidon = locate() in component_parts
	if(Bidon && Bidon.reagents.total_volume)
		Bidon.reagents.trans_to_holder(src.reagents, Bidon.reagents.total_volume)
		reagents.maximum_volume = Bidon.reagents.maximum_volume
		Bidon.update_icon()

/obj/machinery/aetherium_refinery/attack_hand(mob/user as mob)
	interact(user)
	return

// Those procs return the stuff inside the refinery and the bidon connected to it.
/obj/machinery/aetherium_refinery/proc/get_solid_aetherium()
	var/count = 0
	for(var/obj/item/stack/material/aetherium/AC in contents)
		count += AC.amount
	return count

// Return the amount of liquid aetherium we currently have
/obj/machinery/aetherium_refinery/proc/get_liquid_aetherium()
	return reagents.get_reagent_amount(MATERIAL_AETHERIUM)

// Return the amount of aetherium the bidon has.
/obj/machinery/aetherium_refinery/proc/get_bidon_aetherium()
	return Container?.reagents.get_reagent_amount(MATERIAL_AETHERIUM)

// This proc turn solid aetherium into its liquid counterpart.
/obj/machinery/aetherium_refinery/proc/process_crystals()
	for(var/obj/item/stack/material/aetherium/AC in contents)
		while(AC.amount >= 1)
			if(reagents.maximum_volume - reagents.total_volume < crystal_worth)
				return
			reagents.add_reagent(MATERIAL_AETHERIUM, crystal_worth) // Create liquid aetherium
			AC.use(1) // Use one crystal

// Transfer all of the liquid aetherium that we can
/obj/machinery/aetherium_refinery/proc/transfer_to_bidon()
	if(Container)
		var/free_space = Container.reagents.get_free_space()
		reagents.trans_to_holder(Container.reagents, free_space > reagents.total_volume ? reagents.total_volume : free_space)
		Container.update_icon()
	return

// This proc search for nearby anchored BIDONS
/obj/machinery/aetherium_refinery/proc/search_bidons()
	for(var/obj/structure/reagent_dispensers/bidon/B in range(1, src))
		if(B.anchored_machine == src)
			Container = B
			return
	Container = null // This should only happen if there was no anchored BIDONs nearby

// Eject a given number of Aetherium Shards.
/obj/machinery/aetherium_refinery/proc/remove_crystals(var/amount = 0)
	if(amount < 1)
		return

	var/amount_to_eject = (amount > get_solid_aetherium() ? get_solid_aetherium() : amount)
	var/obj/item/stack/material/aetherium/Current_Sheet = new(get_turf(src))
	var/use_extra_sheet = TRUE // We need to use an extra sheet to compensate for the one that come with the object we spawned
	while(amount_to_eject)
		if(Current_Sheet?.get_amount() >= Current_Sheet?.get_max_amount())
			Current_Sheet = null
		if(!Current_Sheet)
			Current_Sheet = new(get_turf(src))
			use_extra_sheet = TRUE
		for(var/obj/item/stack/material/aetherium/AC in contents)
			if(use_extra_sheet)
				AC.use(1) // We're using and not transfering because the destination has one sheet extra
				amount_to_eject--
				use_extra_sheet = FALSE
				break

			AC.transfer_to(Current_Sheet, 1)
			amount_to_eject--
			break


/obj/machinery/aetherium_refinery/interact(mob/user as mob)
	if((get_dist(src, user) > 1) || (stat & (BROKEN|NOPOWER)))
		if(!isAI(user) && !isghost(user))
			user.unset_machine()
			user << browse(null, "window=AMcontrol")
			return

	search_bidons()

	user.set_machine(src)

	var/dat = ""
	dat += "<head><title>Aetherium Refinery</title></head>"
	dat += "Aetherium Refinery<BR>"
	dat += "<A href='?src=\ref[src];close=1'>Close</A><BR>"
	dat += "<A href='?src=\ref[src];refresh=1'>Refresh</A><BR><BR>"
	dat += "Current quantity of solid aetherium : [get_solid_aetherium()].<BR>"
	if(get_solid_aetherium())
		dat += "<A href='?src=\ref[src];process=1'>Process Crystals</A><BR>"
		dat += "<A href='?src=\ref[src];eject=1'>Eject Crystals</A><BR>"
	else
		dat += "<BR><BR>"
	dat += "Current quantity of liquid aetherium : [get_liquid_aetherium()]/[reagents.maximum_volume].<BR>"

	if(Container)
		if(get_liquid_aetherium())
			dat += "<A href='?src=\ref[src];transfer=1'>Transfer to connected Bidon</A><BR>"
		else
			dat += "<BR>"
		dat += "Current Bidon Capacity : [Container.reagents.total_volume]/[Container.reagents.maximum_volume].<BR>"
	else
		dat += "No Bidon connected. Please connect a Bidon to start the transfer.<BR>"

	user << browse(dat, "window=AetheriumRefinery")
	onclose(user, "AetheriumRefinery")
	return

/obj/machinery/aetherium_refinery/Topic(href, href_list)
	if(isghost(usr)) // Ghosts can't do shit
		return

	//Ignore input if we are broken or guy is not touching us, AI can control from a ways away
	if(stat & (BROKEN|NOPOWER) || (get_dist(src, usr) > 1 && !isAI(usr)))
		usr.unset_machine()
		usr << browse(null, "window=AetheriumRefinery")
		return

	..()

	if(href_list["close"])
		usr << browse(null, "window=AetheriumRefinery")
		usr.unset_machine()
		return

	if(href_list["process"])
		process_crystals()

	if(href_list["transfer"])
		transfer_to_bidon()

	if(href_list["eject"])
		remove_crystals(input(usr, "How many crystals do you want to remove?", "Remove crystals", 0) as null|num)

	updateDialog()
	return

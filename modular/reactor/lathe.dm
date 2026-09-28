/global/list/crafting_designs

/datum/design/nuclear
	category = "nuclear"

/datum/design/nuclear/AssembleDesignName(atom/temp_atom)
	if(!name && temp_atom)
		name = temp_atom.name

	item_name = name

	if(name_category)
		name = "[name_category] ([item_name])"

	name = capitalize(name)


/datum/design/nuclear/control_rod
	name = "standard control rod"
	category = "control rod"
	build_path = /obj/item/control_rod

/datum/design/nuclear/industrial_control_rod
	name = "industrial control rod"
	category = "control rod"
	build_path = /obj/item/control_rod/industrial

/datum/design/nuclear/fuel_rod
	name = "uranium fuel rod"
	category = "fuel rod"
	build_path = /obj/item/fuel_rod/uranium/spent

/datum/design/nuclear/plutonium_fuel_rod
	name = "plutonium fuel rod"
	category = "fuel rod"
	build_path = /obj/item/fuel_rod/plutonium/spent

/datum/design/nuclear/asterium_fuel_rod
	name = "asterium fuel rod"
	category = "fuel rod"
	build_path = /obj/item/fuel_rod/asterium/spent

/obj/machinery/autolathe/nuclear
	name = "Nuclear Lathe"
	desc = "A specialized milling machine designed to produce nuclear rods. It cannot enrich fissile material."
	icon = 'modular/reactor/astra_centrifuge.dmi'
	icon_state = "lathe"
	unsuitable_materials = list()
	have_disk = FALSE
	have_reagents = FALSE
	have_recycling = TRUE
	power_channel = STATIC_EQUIP
	use_power = IDLE_POWER_USE
	idle_power_usage = 10
	active_power_usage = 1000
	layer = HIDE_LAYER
	uses_stat = TRUE
	var/mob/living/Crafter
	var/list/designs = list()
	categories = list("fuel rod", "control rod")
	dir = SOUTH
	var/width = 2

/obj/machinery/autolathe/nuclear/Initialize()
	. = ..()
	if(!crafting_designs)
		for(var/designpath in subtypesof(/datum/design/nuclear))
			var/datum/computer_file/binary/design/D = new
			D.set_design_type(designpath)
			if(istype(D.design))
				LAZYADD(crafting_designs, D)
			else
				log_debug("Nuclear design file \"[D]\" did not possess [designpath]")
				D.qdel_self()
	LAZYADD(designs, crafting_designs)

	if(width > 1)
		if(dir in list(SOUTH, WEST))
			bound_width = width * world.icon_size
			bound_height = world.icon_size
		else
			bound_width = world.icon_size
			bound_height = width * world.icon_size

/obj/machinery/autolathe/nuclear/res_load()
	flick("craft_cut", src)

/obj/machinery/autolathe/nuclear/design_list()
	return designs

/obj/machinery/autolathe/nuclear/nano_ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = NANOUI_FOCUS)
	..()
	Crafter = user


/obj/machinery/autolathe/nuclear/can_print(var/datum/computer_file/binary/design/design_file)
	if(!Crafter.Adjacent(src))
		return ERR_DISTANT
	if(Crafter.incapacitated(INCAPACITATION_DEFAULT) || !(Crafter.machine == src))
		return ERR_STOPPED
	if(Crafter.stats.getStat(STAT_COG) < (design_file.design.minimum_quality * 15 + 15))
		return ERR_SKILL_ISSUE
	. = ..()

/obj/machinery/autolathe/nuclear/get_quality()
	var/quality_level = -1
	if(istype(Crafter))
		quality_level = min(round((Crafter.stats.getStat(STAT_COG) - 15) / 15), max_quality) + (Crafter.stats.getPerk(/datum/perk/inspiration) ? 1 : 0)
	return quality_level

/obj/machinery/autolathe/nuclear/update_icon()
	overlays.Cut()
	icon_state = initial(icon_state)

	if(icon_off())
		icon_state = "[icon_state]_off"
		return

	if(working)
		if(paused || error)
			icon_state = "[icon_state]_off"
			set_power_use(IDLE_POWER_USE)
			playsound(src.loc, 'sound/machines/triple_beep.ogg', 20, 1, -3)

		else
			icon_state = "[icon_state]_on"
			playsound(src, pick('sound/effects/lift_heavy_start.ogg', 'sound/items/e_screwdriver.ogg', 'sound/machines/juicer.ogg', 'sound/items/welding1.ogg', 'sound/items/welding2.ogg', 'sound/items/welding3.ogg', 'sound/items/welding4.ogg'), 40, 1)
			set_power_use(ACTIVE_POWER_USE)

/obj/machinery/autolathe/nuclear/print_post()
	if(!current_file && !queue.len)
		playsound(src, 'sound/effects/lift_heavy_stop.ogg', 60, 1)
		playsound(src.loc, 'sound/machines/ping.ogg', 50, 1, -3)
		visible_message("\The [src] pings, indicating that queue is complete.")
		set_power_use(IDLE_POWER_USE)
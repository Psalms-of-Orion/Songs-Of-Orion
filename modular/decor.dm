//Purely decorative set dressing items.

/obj/structure/decor
	name = "decor obj"
	desc = "That shouldn't be there..."
	icon = 'modular/icons/decor.dmi'
	icon_state = "cart"
	w_class = ITEM_SIZE_BULKY
	anchored = TRUE
	density = TRUE
	climbable = TRUE
	bad_type = /obj/structure/decor
	var/sanity_value = 0

///obj/structure/decor/random_plant/Initialize(mapload)
//	. = ..()
//	var/datum/component/atom_sanity/S = GetComponent(/datum/component/atom_sanity)
//	S.affect = sanity_value

/obj/structure/decor/random_plant
	name = "potted plant"
	desc = "Unlikely to be real."
	icon = 'modular/icons/decor.dmi'
	icon_state = "pot_1"
	w_class = ITEM_SIZE_BULKY
	anchored = FALSE
	density = FALSE
	climbable = TRUE
	layer = ABOVE_MOB_LAYER
	var/plant_overlay = "big"

/obj/structure/decor/random_plant/Initialize(mapload)
	. = ..()
	var/new_icon = rand(1,13)
	overlays += image(icon, "[plant_overlay]_[new_icon]")

/obj/structure/decor/random_plant/clay
	desc = "Potted plant in a tasteful, but likely fake clay pot."
	icon_state = "pot_2"

/obj/structure/decor/random_plant/desktop
	name = "small potted plant"
	desc = "Unlikely to be real, but fits nicely on a desk or table."
	icon_state = "desk_pot_1"
	anchored = FALSE
	density = FALSE
	climbable = FALSE
	plant_overlay = "desk"

/obj/structure/decor/random_plant/desktop/clay
	name = "small potted plant"
	desc = "A tasteful potted plant in a clay flowerpot that fits nicely on a desk or table."
	icon_state = "desk_pot_2"
	anchored = FALSE
	density = FALSE
	climbable = FALSE
	plant_overlay = "desk"


#define BSOD 1
#define WHEAT 2
#define SHORE 3
#define POPPY 4

/obj/structure/salvageable/wall_panel
	name = "environment simulator"
	desc = "Decorative wall panels with simulated depth to help reduce space fatigue and restore a little sanity."
	icon_state = "bsod"
	icon = 'modular/icons/decor.dmi'
	spawn_blacklisted = TRUE
	var/panel_light_color = COLOR_LIGHTING_BLUE_MACHINERY
	var/panel_channel = BSOD
	density = FALSE
	salvageable_parts = list(
		/obj/item/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/computer_hardware/led = 40,
		/obj/item/computer_hardware/led/adv = 40,
		/obj/item/stack/material/glass{amount = 5} = 70,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/computer_hardware/network_card = 60,
		/obj/item/computer_hardware/network_card/advanced = 40,
		/obj/item/computer_hardware/network_card/wired = 40,
		/obj/item/computer_hardware/card_slot = 40,
		/obj/item/computer_hardware/processor_unit = 60,
		/obj/item/computer_hardware/processor_unit/small = 50,
		/obj/item/computer_hardware/processor_unit/adv = 40,
		/obj/item/computer_hardware/processor_unit/adv/small = 30,
		/obj/item/computer_hardware/hard_drive = 60,
		/obj/item/computer_hardware/hard_drive/advanced = 40,
		/obj/spawner/lathe_disk = 40,
		/obj/spawner/lathe_disk/advanced = 10,
	)
	pixel_y = 32
	var/sanity_value = 0
	health = 30

/obj/structure/salvageable/wall_panel/Initialize(mapload)
	. = ..()
//	var/datum/component/atom_sanity/S = GetComponent(/datum/component/atom_sanity)
//	S.affect = sanity_value

	set_light(l_range = 2, l_power = 2, l_color = panel_light_color)


/obj/structure/salvageable/wall_panel/attackby(obj/item/I, mob/user)
	if(I.get_tool_type(usr, list(QUALITY_PRYING), src))
		to_chat(user, SPAN_NOTICE("You start salvage anything useful from \the [src]."))
		if(I.use_tool(user, src, WORKTIME_LONG, QUALITY_PRYING, FAILCHANCE_NORMAL, required_stat = STAT_MEC) || health < 1)
			playsound(user, 'sound/machines/shutdown.ogg', 60, 1)
			dismantle()
			qdel(src)
			return


/obj/structure/salvageable/wall_panel/proc/destroy()
	if(health < 1)
		do_sparks(6, (rand(1,8)), src)
		playsound(src, pick('sound/effects/Glassbr1.ogg', 'sound/effects/Glassbr2.ogg', 'sound/effects/Glassbr3.ogg',), 75, 0)
		dismantle()
		qdel(src)
		return

/obj/structure/salvageable/wall_panel/proc/change_channel()
	if(health > 10)
		switch(panel_channel)
			if(BSOD)
				panel_channel = WHEAT
				sanity_value = 3
				icon_state = "wheat"
				panel_light_color = COLOR_LIGHTING_NEOTHEOLOGY_BRIGHT
			if(WHEAT)
				panel_channel = SHORE
				sanity_value = 3
				icon_state = "shore"
				panel_light_color = COLOR_LIGHTING_BLUE_BRIGHT
			if(SHORE)
				panel_channel = POPPY
				sanity_value = 3
				icon_state = "poppy"
				panel_light_color = COLOR_LIGHTING_CYAN_BRIGHT
			if(POPPY)
				panel_channel = BSOD
				sanity_value = 0
				icon_state = "bsod"
				panel_light_color = COLOR_LIGHTING_BLUE_MACHINERY
		playsound(src, 'sound/machines/geiger/switch_chunky.ogg', 50, 0)
		set_light(l_range = 2, l_power = 2, l_color = panel_light_color)
	else
		panel_channel = BSOD
		set_light(l_range = 2, l_power = 2, l_color = COLOR_LIGHTING_BLUE_MACHINERY)
		playsound(src, pick('sound/weapons/cat/cat_power.ogg','sound/weapons/cat/cat_power2.ogg','sound/weapons/cat/cat_power3.ogg'), 99, 0)
		return


/obj/structure/salvageable/wall_panel/AltClick(mob/user)
	var/turf/T = get_turf(src)
	if(T && user.TurfAdjacent(T))
		if(user.incapacitated())
			to_chat(user, SPAN_WARNING("You can't do that right now!"))
			return
		else
			change_channel()

/obj/structure/salvageable/wall_panel/wheat
	panel_channel = WHEAT
	sanity_value = 3
	icon_state = "wheat"
	panel_light_color = COLOR_LIGHTING_NEOTHEOLOGY_BRIGHT

/obj/structure/salvageable/wall_panel/shore
	panel_channel = SHORE
	sanity_value = 3
	icon_state = "shore"
	panel_light_color = COLOR_LIGHTING_CYAN_BRIGHT

/obj/structure/salvageable/wall_panel/poppy
	panel_channel = POPPY
	sanity_value = 3
	icon_state = "poppy"
	panel_light_color = COLOR_LIGHTING_BLUE_BRIGHT



#undef BSOD
#undef WHEAT
#undef SHORE
#undef POPPY
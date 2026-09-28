/obj/structure/table/console
	name = "console"
	desc = "Universal structural system for holding important electronics, or coffee cups."
	icon = 'modular/icons/console_table.dmi'
	icon_state = "console"
	can_plate = 0
	can_reinforce = 0
	flipped = -1
	reinforced = TRUE
	maxHealth = 50
	health = 50

/obj/structure/table/console/New()
	..()
	verbs -= /obj/structure/table/verb/do_flip
	verbs -= /obj/structure/table/proc/do_put

/obj/structure/table/console/update_connections()
	return

/obj/structure/table/console/update_desc()
	return

/obj/structure/table/console/update_icon()
	return

/obj/structure/table/console/end
	icon_state = "console_end"

/obj/structure/table/console/smooth
	icon_state = "console_smooth"

/obj/structure/table/console/holo
	name = "console"
	desc = "Universal structural system for holding important electronics, or coffee cups."
	icon = 'modular/icons/console_table.dmi'
	icon_state = "holo_off"
	can_plate = 0
	can_reinforce = 0
	flipped = -1
	reinforced = TRUE
	maxHealth = 50
	health = 50
	var/table_on = FALSE

/obj/structure/table/console/holo/AltClick(mob/user)
	var/turf/T = get_turf(src)
	if(T && user.TurfAdjacent(T))
		if(user.incapacitated())
			to_chat(user, SPAN_WARNING("You can't do that right now!"))
			return
		else
			table_on = !table_on
			if(!table_on)
				set_light(null)
				icon_state = "holo_off"
			else
				set_light(l_range = 2, l_power = 1, l_color = COLOR_LIGHTING_BLUE_MACHINERY)
				icon_state = "holo_on"
				playsound(loc, 'sound/machines/computer_touch.ogg', 50, 1)

/obj/structure/table/console/holo/on
	icon_state = "holo_on"
	table_on = TRUE

/obj/structure/table/console/holo/on/Initialize(mapload)
	set_light(l_range = 1.5, l_power = 1, l_color = COLOR_LIGHTING_BLUE_MACHINERY)

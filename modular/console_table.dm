/obj/structure/table/console
	name = "console"
	desc = "Different from the medieval version."
	icon = 'modular/icons/console_table.dmi'
	icon_state = "console"
	can_plate = 0
	can_reinforce = 0
	flipped = -1

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
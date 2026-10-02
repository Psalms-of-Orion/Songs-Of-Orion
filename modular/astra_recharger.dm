/obj/machinery/recharger/astra
	name = "recharger"
	desc = "A charging dock for power cells, power tools, computer devices and energy based weaponry."
	icon = 'modular/icons/astra_power.dmi'
	icon_state = "recharger"
	portable = FALSE
	density = TRUE

/obj/machinery/recharger/astra/update_icon()
	icon_state = initial(icon_state)

	if(panel_open)
		icon_state = "[icon_state]_open"
		playsound(src, 'sound/effects/closet_open.ogg', 80, 1)

	else if((stat & (NOPOWER|BROKEN)) || !anchored)
		icon_state = "[icon_state]_off"
	else
		var/obj/item/cell/cell = charging?.get_cell()

		if(cell)
			if(cell.fully_charged())
				icon_state = "[icon_state]_done"
				playsound(src, 'sound/effects/compbeep1.ogg', 20, 1)
			else
				icon_state = "[icon_state]_work"
				playsound(src, 'sound/effects/beam.ogg', 60, 1)

		else if(charging)
			icon_state = "[icon_state]_done"
			playsound(src, 'sound/effects/compbeep1.ogg', 20, 1)


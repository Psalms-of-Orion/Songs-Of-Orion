/obj/item/device/geiger
	name = "geiger counter"
	desc = "A handheld counter and G-M probe used to detect and measure radiation."
	icon = 'modular/reactor/geiger.dmi'
	icon_state = "geiger"
	item_state = "geiger"
	w_class = ITEM_SIZE_NORMAL
	var/rad_level = 0
	var/geigersilenced = TRUE
	var/detector_type = "geiger"
	var/rad_total = 0
	var/rad_last = 0
	var/display_scale = ROENTGEN
	var/scale_name = "Roentgen"

obj/item/device/geiger/Initialize()
	..()
	AddRadDetector(src)
	overlays += image(icon, "[icon_state]_off")
z
/obj/item/device/geiger/examine(mob/user)
	..()
	if(detector_type == "geiger" && geigersilenced == FALSE)
		description_info = "[src] [rad_last > 0 ? "last detected [(rad_last * display_scale) * 0.5] [scale_name]/s" : "doesn't detect any radiation"]. It has measured [rad_total * display_scale] [scale_name] since last reset."
	if(detector_type == "dosimeter")
		switch(rad_total)
			if(0 to 0.1)
				return
			if(200 to 100000)
				description_info = "[src] has maxed out at [200 * display_scale] [scale_name]! Seek immediate medical attention!"
			if(100 to 200)
				description_info = "[src] has detected [rad_total * display_scale] [scale_name]! Seek immediate medical attention!"
			if(0.1 to 100)
				description_info = "[src] has detected [rad_total * display_scale] [scale_name]."
			else
				return
	else
		return

/obj/item/device/geiger/proc/reset_rads()
	rad_level = 0
	icon_state = initial(icon_state)


/obj/item/device/geiger/attack_self(mob/user)
	geigersilenced = !geigersilenced
	playsound(src, 'sound/machines/geiger/switch_chunky.ogg', 50, 0)
	to_chat(user, SPAN_NOTICE("You switch the power on the [src]."))
	rad_total = 0
	rad_last = 0
	description_info = null
	cut_overlays()
	if(!geigersilenced)
		overlays += image(icon, "[icon_state]_zero")
	else
		overlays += image(icon, "[icon_state]_off")

/obj/item/device/geiger/AltClick(mob/user)
	var/turf/T = get_turf(src)
	if(T && user.TurfAdjacent(T))
		if(user.incapacitated())
			to_chat(user, SPAN_WARNING("You can't do that right now!"))
			return
		if(!geigersilenced)
			switch(display_scale)
				if(ROENTGEN)
					display_scale = MILLISEIVERTS
					scale_name = "mSv"
				if(MILLISEIVERTS)
					display_scale = GRAYS
					scale_name = "Grays"
				if(GRAYS)
					display_scale = ROENTGEN
					scale_name = "Roentgen"
			playsound(src, 'sound/machines/geiger/switch_chunky.ogg', 50, 0)
			rad_total = 0
			rad_last = 0
			description_info = null
			cut_overlays()
			to_chat(user, SPAN_NOTICE("You switch the display scale to [scale_name]."))
		else
			return

/obj/item/device/geiger/proc/add_rads(var/amount)
	rad_level += amount
	rad_total = rad_level + rad_total
	rad_last = 0 + rad_level

	if(geigersilenced == FALSE && detector_type == "geiger")
		switch(rad_level)
			if(0 to 0.2)
				reset_rads()
				spawn(2 SECONDS)
					cut_overlays()
					return
			if(200 to 100000)
				playsound(src, pick('sound/machines/geiger/geiger_max1.ogg','sound/machines/geiger/geiger_max2.ogg'), 50, 0)
				overlays += image(icon, "[icon_state]_max")
			if(151 to 200)
				playsound(src, pick('sound/machines/geiger/geiger_extreme1.ogg','sound/machines/geiger/geiger_extreme2.ogg'), 30, 0)
				overlays += image(icon, "[icon_state]_extreme")
			if(101 to 150)
				cut_overlays()
				playsound(src, pick('sound/machines/geiger/geiger_veryhigh1.ogg','sound/machines/geiger/geiger_veryhigh2.ogg'), 30, 0)
				overlays += image(icon, "[icon_state]_veryhigh")
			if(61 to 100)
				playsound(src, pick('sound/machines/geiger/geiger_high1.ogg','sound/machines/geiger/geiger_high2.ogg'), 40, 0)
				overlays += image(icon, "[icon_state]_high")
			if(30 to 60)
				playsound(src, pick('sound/machines/geiger/geiger_mid1.ogg','sound/machines/geiger/geiger_mid2.ogg'), 30, 0)
				overlays += image(icon, "[icon_state]_mid")
			if(5 to 30)
				playsound(src, pick('sound/machines/geiger/geiger_low1.ogg','sound/machines/geiger/geiger_low2.ogg'), 25, 0)
				overlays += image(icon, "[icon_state]_low")
			if(0.2 to 5)
				playsound(src, pick('sound/machines/geiger/geiger_low1.ogg','sound/machines/geiger/geiger_low2.ogg'), 25, 0)
				overlays += image(icon, "[icon_state]_zero")
			else
				cut_overlays()
				return
	if(rad_total >= 0 && detector_type == "dosimeter")
		switch(rad_total)
			if(0 to 1)
				update_icon()
			if(200 to 100000)
				playsound(src, 'sound/machines/triple_beep.ogg', 30, 0)
				overlays += image(icon, "[icon_state]_max")
			if(100 to 150)
				playsound(src, 'sound/machines/airalarm.ogg', 10, 0)
				overlays += image(icon, "[icon_state]_max")
			if(85 to 100)
				playsound(src, 'sound/machines/triple_beep.ogg', 30, 0)
				overlays += image(icon, "[icon_state]_veryhigh")
			if(60 to 85)
				playsound(src, 'sound/machines/triple_beep.ogg', 30, 0)
				overlays += image(icon, "[icon_state]_high")
			if(30 to 60)
				overlays += image(icon, "[icon_state]_mid")
				playsound(src, 'sound/machines/triple_beep.ogg', 30, 0)
			if(1.1 to 30)
				playsound(src, pick('sound/machines/geiger/geiger_low1.ogg','sound/machines/geiger/geiger_low2.ogg'), 20, 0)
				overlays += image(icon, "[icon_state]_low")
			else
				return

	else
		return

// TODO : Have the counter emit a noise & change icon when irradiated. TO-DONE.
/obj/item/device/geiger/update_icon()
	..()


/obj/item/device/geiger/dosimeter
	name = "dosimeter"
	desc = "A small device used to track radiation exposure. The dial can be used with one hand to reset the counter and silence alarms.\
	It can be kept in storage if the user is properly shielded to avoid saturation."
	icon = 'modular/reactor/geiger.dmi'
	icon_state = "dosimeter"
	item_state = "multitool"
	w_class = ITEM_SIZE_SMALL
	detector_type = "dosimeter"
	geigersilenced = FALSE
	display_scale = MILLISEIVERTS
	scale_name = "mSv"

/obj/item/device/geiger/dosimeter/Initialize()
	..()
	AddRadDetector(src)

/obj/item/device/geiger/dosimeter/examine(mob/user)
	..()


/obj/item/device/geiger/dosimeter/attack_self(mob/user)
	reset_rads()
	playsound(src, 'sound/items/Ratchet.ogg', 50, 0)
	to_chat(user, SPAN_NOTICE("You reset the counter on the [src]."))
	rad_total = 0
	description_info = null
	overlays += image(icon, "[icon_state]_zero")


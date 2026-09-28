/obj/item/storage/case/fuelrod
	name = "Fissionable Storage Case"
	desc = "Heavily shielded case lined with neutron absorbers to prevent internal fission."
	description_info = "Alt+Click to open and close. Are you sure you have the right PPE to open Pandora's box?"
	icon_state = "fuelcrate"
	max_w_class = ITEM_SIZE_HUGE
	w_class = ITEM_SIZE_HUGE
	icon = 'modular/reactor/nuclearcrate.dmi'
	can_hold = list(/obj/item/fuel_rod)
	storage_slots = 4
	density = 1


/obj/item/storage/case/fuelrod/update_icon()
	..()

	if(opened)
		density = 0
		cut_overlays()
		for(var/obj/item/fuel_rod in contents)
			overlays += image('modular/reactor/nuclearcrate.dmi', "[icon_state]_[contents.len]")
	else
		density = 1

/obj/item/storage/case/fuelrod/attack_hand(mob/user)
	if (!opened)
		return

/obj/item/storage/case/fuelrod/uranium
	name = "Fissionable Storage Case"
	desc = "Heavily shielded case lined with neutron absorbers to prevent internal fission."

/obj/item/storage/case/fuelrod/uranium/New()
	..()
	new /obj/item/fuel_rod/uranium(src)
	new /obj/item/fuel_rod/uranium(src)
	new /obj/item/fuel_rod/uranium(src)
	new /obj/item/fuel_rod/uranium(src)
	update_icon()

/obj/item/storage/case/fuelrod/asterium
	name = "Asterium Storage Case"
	desc = "Heavily shielded case lined with neutron absorbers to prevent internal fission. Extremely potent, handle with care."

/obj/item/storage/case/fuelrod/asterium/New()
	..()
	new /obj/item/fuel_rod/asterium(src)
	new /obj/item/fuel_rod/asterium(src)
	new /obj/item/fuel_rod/asterium(src)
	new /obj/item/fuel_rod/asterium(src)
	update_icon()

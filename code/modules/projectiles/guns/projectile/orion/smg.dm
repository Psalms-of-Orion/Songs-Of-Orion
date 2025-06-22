/obj/item/gun/projectile/automatic/smg
	name = "submachine gun"
	desc = "Stamped steel, polymer. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/mp5.dmi'
	icon_state = "mp5"
	item_state = "mp5"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_SMG
	magazine_type = /obj/item/ammo_magazine/smg
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 5)
	price_tag = 1800
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/rifle_boltforward.ogg'
	damage_multiplier = 1
	penetration_multiplier = 0
	zoom_factors = list(0.3)//we're gonna try out giving all long-guns an iron sight zoom factor, but we'll see.
	init_recoil = SMG_RECOIL(0.6)
	gun_parts = list(/obj/item/part/gun/frame/c20r = 1, /obj/item/part/gun/modular/grip/black = 1, /obj/item/part/gun/modular/mechanism/smg = 1, /obj/item/part/gun/modular/barrel/pistol = 1)
	can_dual = TRUE

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_3_ROUND_SMG,
		SEMI_AUTO_300,
		)

	serial_type = "S"


/obj/item/gun/projectile/automatic/smg/update_icon()
	..()

	icon_state = initial(icon_state) + (ammo_magazine ? "-full" : "")
	set_item_state(ammo_magazine ? "_mag" : "", hands = TRUE, back = TRUE, onsuit = TRUE)
	cut_overlays()
	update_wear_icon()

/obj/item/gun/projectile/automatic/smg/mp5sd
	name = "submachine gun"
	desc = "The angry tube. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/mp5sd.dmi'
	silenced = TRUE
	damage_multiplier = 1.1 //funni subsonic barrel vents
	penetration_multiplier = -0.1
	init_firemodes = list(
		FULL_AUTO_300,
		BURST_3_ROUND_RAPID,
		SEMI_AUTO_300,
		)

/obj/item/gun/projectile/automatic/smg/mp5k//This one is kinda goofy, I'll admit.
	name = "submachine gun"
	desc = "Stubby, angry. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/mp5k.dmi'
	damage_multiplier = 0.9 //funni short barrel
	w_class = ITEM_SIZE_SMALL
	penetration_multiplier = -0.2
	init_firemodes = list(
		FULL_AUTO_800,
		BURST_3_ROUND_RAPID,
		SEMI_AUTO_300,
		)
	zoom_factors = list(0.1)
	init_recoil = SMG_RECOIL(1)

/obj/item/gun/projectile/automatic/smg/mp5gl
	name = "submachine gun"
	desc = "The angry tube. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/mp5gl.dmi'
	damage_multiplier = 1.5 //funni half life
	penetration_multiplier = 1.5
	load_method = SINGLE_CASING|MAGAZINE

	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_300,
		BURST_3_ROUND_SMG,
		list(mode_name="fire grenades", mode_desc="Fires the underslung grenade launcher.",  burst=null, fire_delay=null, move_delay=null,  icon="grenade", use_launcher=1)
		)

	var/obj/item/gun/projectile/underslung/launcher

/obj/item/gun/projectile/automatic/smg/mp5gl/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/gun/projectile/automatic/smg/mp5gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/grenade)))
		launcher.load_ammo(I, user)
	else
		..()

/obj/item/gun/projectile/automatic/smg/mp5gl/attack_hand(mob/user)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(user.get_inactive_hand() == src && cur_mode.settings["use_launcher"])
		launcher.unload_ammo(user)
	else
		..()

/obj/item/gun/projectile/automatic/smg/mp5gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(cur_mode.settings["use_launcher"])
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/gun/projectile/automatic/smg/mp5gl/Initialize()
	. = ..()
	update_icon()


/obj/item/gun/projectile/automatic/smg/mp5gl/examine(mob/user)
	..()
	if(launcher.loaded.len)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

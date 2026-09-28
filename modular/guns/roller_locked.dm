//// ========================================================== ////
/////H & K ROLLER DELAYED WEAPONS //////
//// Every flavor of CETME based firearms shall belong here.
//// Includes the MP5, MP5K, MP5SD, MP5GL, HK31/51/G3, HK53, & HK21
//// These could be considered placeholders, or SOVL, as they provide the majority of niches for self-loading long guns.
//// MP5: Standard SMG across the board.
//// MP5K: Zappy little machine pistol.
//// MP5SD: Suppressed sneaky lad for antags and the HECU medic.
//// MP5GL: Funni Half-Life HECU gun for chaos, expensive and almost unobtainable.
//// HK53: Standard "carbine" in every way, the AK or AR currently.
//// HK51/G3KA4: Heavy battle rifle for defeating armor and meat.
//// HK21K: Sawn off GPMG that replaces the Eris PKM. Very loud.
//// ========================================================== ////

obj/item/gun/projectile/automatic/hk //MP5A5
	name = "submachine gun"
	desc = "Stamped steel, polymer. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/hk/mp5.dmi'
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
	gun_parts = list(/obj/item/part/gun = 4, /obj/item/part/gun/modular/grip/black = 1, /obj/item/part/gun/modular/mechanism/smg = 1, /obj/item/part/gun/modular/barrel/pistol = 1)
	can_dual = TRUE

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_3_ROUND_SMG,
		SEMI_AUTO_300,
		)

	serial_type = "S"


/obj/item/gun/projectile/automatic/hk/update_icon()
	..()

	icon_state = initial(icon_state) + (ammo_magazine ? "-full" : "")
	set_item_state(ammo_magazine ? "_mag" : "", hands = TRUE, back = TRUE, onsuit = TRUE)
	cut_overlays()
	update_wear_icon()

/obj/item/gun/projectile/automatic/hk/mp5sd
	name = "submachine gun"
	desc = "The angry tube. An elegantly complex machine, a sub-machine."
	description_info = "Has an integrated suppressor which quiets shots and doesn't print messages to the text box."
	icon = 'modular/guns/icons/hk/mp5sd.dmi'
	silenced = TRUE
	damage_multiplier = 1.1 //funni subsonic barrel vents
	penetration_multiplier = -0.1
	init_firemodes = list(
		FULL_AUTO_300,
		BURST_3_ROUND_RAPID,
		SEMI_AUTO_300,
		)

/obj/item/gun/projectile/automatic/hk/mp5k//This one is kinda goofy, I'll admit.
	name = "submachine gun"
	desc = "Stubby, angry. An elegantly complex machine, a sub-machine."
	icon = 'modular/guns/icons/hk/mp5k.dmi'
	damage_multiplier = 0.9 //funni short barrel
	w_class = ITEM_SIZE_SMALL
	penetration_multiplier = -0.3
	init_firemodes = list(
		FULL_AUTO_800,
		BURST_3_ROUND_RAPID,
		SEMI_AUTO_300,
		)
	zoom_factors = list(0.1)
	init_recoil = SMG_RECOIL(1)

/obj/item/gun/projectile/automatic/hk/mp5gl
	name = "submachine gun"
	desc = "The angry tube. An elegantly complex machine, a sub-machine."
	description_info = "Equipped with an underslung grenade launcher which can be used by selecting the launcher fire mode."
	icon = 'modular/guns/icons/hk/mp5gl.dmi'
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

/obj/item/gun/projectile/automatic/hk/mp5gl/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/gun/projectile/automatic/hk/mp5gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/grenade)))
		launcher.load_ammo(I, user)
	else
		..()

/obj/item/gun/projectile/automatic/hk/mp5gl/attack_hand(mob/user)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(user.get_inactive_hand() == src && cur_mode.settings["use_launcher"])
		launcher.unload_ammo(user)
	else
		..()

/obj/item/gun/projectile/automatic/hk/mp5gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(cur_mode.settings["use_launcher"])
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			return
//			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/gun/projectile/automatic/hk/mp5gl/Initialize()
	. = ..()
	update_icon()


/obj/item/gun/projectile/automatic/hk/mp5gl/examine(mob/user)
	..()
	if(launcher.loaded.len)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/gun/projectile/automatic/hk/g3 //G3KA4 with wooden furniture
	name = "battle rifle"
	desc = "Stamped steel and wood, cut down to turn close quarters and cordite into Traumatic Brain Injuries."
	description_antag = "The sound will fill the hall, bringing power to us all.\
						Like thunder from the sky, sworn to fight and die."
	description_info = "Pistols put holes in people. Rifles put holes through people."
	icon = 'modular/guns/icons/hk/g3.dmi'
	icon_state = "g3"
	item_state = "g3"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_DANGEROUS
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_WOOD = 5)
	price_tag = 2500
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	damage_multiplier = 1.5
	penetration_multiplier = 0
	zoom_factors = list(0.5)//we're gonna try out giving all long-guns an iron sight zoom factor, but we'll see.
	init_recoil = RIFLE_RECOIL(0.6)
	gun_parts = list(/obj/item/part/gun = 4, /obj/item/part/gun/modular/grip/wood = 1, /obj/item/part/gun/modular/mechanism/autorifle = 1, /obj/item/part/gun/modular/barrel/lrifle = 1)
	can_dual = FALSE

	init_firemodes = list(
		SEMI_AUTO_300
		)

/obj/item/gun/projectile/automatic/hk/hk53
	name = "carbine"
	desc = "Stamped steel, polymer. An elegantly complex machine, the brash middle child."
	description_antag = "Kill for gain or shoot to maim, but we don't need a reason.\
						The golden goose is on the loose, and never out of season."
	icon = 'modular/guns/icons/hk/hk53.dmi'
	icon_state = "hk53"
	item_state = "hk53"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 5)
	price_tag = 2000
	fire_sound = 'sound/weapons/guns/fire/sfrifle_fire.ogg'
	damage_multiplier = 1.2
	penetration_multiplier = 0
	init_recoil = RIFLE_RECOIL(0.6)
	gun_parts = list(/obj/item/part/gun = 4, /obj/item/part/gun/modular/grip/rubber = 1, /obj/item/part/gun/modular/mechanism/autorifle = 1, /obj/item/part/gun/modular/barrel/srifle = 1)
	can_dual = TRUE

	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND,
		SEMI_AUTO_300,
		)

/obj/item/gun/projectile/automatic/hk21 //HK21K
	name = "machine gun"
	desc = "Violence rendered in steel and polymer. A belt-fed machine gun cut down to turn close quarters and cordite into Traumatic Brain Injuries."
	description_info = "Belt-fed weapons are more complicated to load, and must be opened with the off-hand before it can be loaded with ammunition."
	icon = 'modular/guns/icons/hk/hk21.dmi'
	var/icon_base
	icon_base = "hk21"
	icon_state = "hk21_closed"
	item_state = "hk21"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL

	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle/pk
	tac_reloads = FALSE
	damage_multiplier = 1
	penetration_multiplier = -0.1
	price_tag = 3500
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 5)
	unload_sound 	= 'sound/weapons/guns/interact/lmg_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/lmg_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/batrifle_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	damage_multiplier = 1.5
	penetration_multiplier = 0
	zoom_factors = list(0.5)//we're gonna try out giving all long-guns an iron sight zoom factor, but we'll see.
	init_recoil = RIFLE_RECOIL(1)
	gun_parts = list(/obj/item/part/gun = 4, /obj/item/part/gun/modular/grip/rubber = 1, /obj/item/part/gun/modular/mechanism/machinegun = 1, /obj/item/part/gun/modular/barrel/lrifle = 1)
	can_dual = FALSE

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_5_ROUND,
		BURST_8_ROUND
		)


	var/cover_open = 0
/obj/item/gun/projectile/automatic/hk21/special_check(mob/user)
	if(cover_open)
		to_chat(user, SPAN_WARNING("[src]'s mechanism is open! Close it before firing!"))
		return 0
	return ..()

/obj/item/gun/projectile/automatic/hk21/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, SPAN_NOTICE("You [cover_open ? "open" : "close"] [src]'s mechanism."))
	update_icon()

/obj/item/gun/projectile/automatic/hk21/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/gun/projectile/automatic/hk21/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/gun/projectile/automatic/hk21/equipped(var/mob/user, var/slot)
	.=..()
	update_icon()

/obj/item/gun/projectile/automatic/hk21/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the mechanism to load [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/lmg/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the mechanism to unload [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/hk21/update_icon()
	icon_state = "[icon_base][cover_open ? "_open" : "_closed"]"
	if(ammo_magazine)
		add_overlay("_mag[ammo_magazine.max_ammo]")
	else
		cut_overlays()
		return
	..()
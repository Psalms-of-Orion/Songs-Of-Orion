
obj/item/gun/projectile/automatic/stoner
	name = "carbine"
	desc = "The black gun."
	description_antag = "And can you tell me, doctor, why I still can't get to sleep?\
	And night time's just a jungle dark and a barking M16?"
	icon = 'modular/guns/icons/stoner.dmi'
	icon_state = "a1"
	item_state = "a1"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE|MAG_WELL_RIFLE_L
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 5)
	price_tag = 2000
	fire_sound = 'sound/weapons/guns/fire/sfrifle_fire.ogg'
	damage_multiplier = 1
	penetration_multiplier = 1.5
	init_recoil = RIFLE_RECOIL(0.6)
	gun_parts = list(/obj/item/part/gun = 4, /obj/item/part/gun/modular/grip/rubber = 1, /obj/item/part/gun/modular/mechanism/autorifle = 1, /obj/item/part/gun/modular/barrel/srifle = 1)
	can_dual = TRUE
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/rifle_boltforward.ogg'
	zoom_factors = list(0.7)//we're gonna try out giving all long-guns an iron sight zoom factor, but we'll see.

	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_300
		)

	serial_type = "S"



obj/item/gun/projectile/automatic/stoner/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"
		itemstring += "_mag"

	if(wielded)
		itemstring += "_doble"

	icon_state = iconstring
	set_item_state(ammo_magazine ? "_mag" : "", hands = TRUE, back = TRUE, onsuit = TRUE)
	update_wear_icon()


obj/item/gun/projectile/automatic/stoner/Initialize()
	. = ..()
	update_icon()


/obj/item/gun/projectile/automatic/stoner/m203
	icon_state = "a2"
	item_state = "a2"
	description_info = "Equipped with an underslung grenade launcher which can be used by selecting the launcher fire mode."
	icon = 'modular/guns/icons/stoner-gl.dmi'
	load_method = SINGLE_CASING|MAGAZINE

	init_firemodes = list(
		SEMI_AUTO_300,
		BURST_3_ROUND_SMG,
		list(mode_name="fire grenades", mode_desc="Fires the underslung grenade launcher.",  burst=null, fire_delay=null, move_delay=null,  icon="grenade", use_launcher=1)
		)

	var/obj/item/gun/projectile/underslung/launcher

/obj/item/gun/projectile/automatic/stoner/m203/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/gun/projectile/automatic/stoner/m203/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/grenade)))
		launcher.load_ammo(I, user)
	else
		..()

/obj/item/gun/projectile/automatic/stoner/m203/attack_hand(mob/user)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(user.get_inactive_hand() == src && cur_mode.settings["use_launcher"])
		launcher.unload_ammo(user)
	else
		..()

/obj/item/gun/projectile/automatic/stoner/m203/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(cur_mode.settings["use_launcher"])
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			return
//			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/gun/projectile/automatic/stoner/m203/Initialize()
	. = ..()
	update_icon()


/obj/item/gun/projectile/automatic/stoner/m203/examine(mob/user)
	..()
	if(launcher.loaded.len)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")
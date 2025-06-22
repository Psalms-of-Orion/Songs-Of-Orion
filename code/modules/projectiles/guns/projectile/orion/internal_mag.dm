/*
===============================================
Oct.2021-PSALMS
Absolute spaghetti code derrived from bolt actions, but it functions correctly.
This allows for the use of self-loading firearms that don't take external magazines, like semi-auto shotguns or mausers.
===============================================
Jun. 2025-PSALMS
Yes, this really was the very first code written for Braking Point that has been on cloud storage forever.
*/


//This is the debug version, which should never occur during normal gameplay.
/obj/item/gun/projectile/internalmag
	name = "\"Wowser\" pistol"
	desc = "An anomalous pistol from behind the veil. Is more gun than it should be."
	description_info = "It uses an internal magazine which can only be loaded when the bolt is locked open."
	icon = 'modular/guns/icons/pistol.dmi'
	icon_state = "wowser"
	item_state = "wowser"
	bad_type = /obj/item/gun/projectile/internalmag
	w_class = ITEM_SIZE_NORMAL
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/pistol
	caliber = CAL_PISTOL
	load_method = SINGLE_CASING
	max_shells = 50
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 4)
	price_tag = 15000//Encourage players to sell it off station
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	damage_multiplier = 3//Or use it like men
	penetration_multiplier = 6
	init_recoil = HANDGUN_RECOIL(1)
	bulletinsert_sound = 'sound/weapons/guns/interact/rev_magin.ogg'
	var/bolt_open = 0
	var/item_suffix = ""

/obj/item/gun/projectile/internalmag/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (item_suffix)
		itemstring += "[item_suffix]"

	if (bolt_open)
		iconstring += "_open"
	else
		iconstring += "_closed"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/internalmag/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/internalmag/attack_self(mob/user) //Someone overrode attackself for this class, soooo.
	if(zoom)
		toggle_scope(user)
		return
	bolt_act(user)

/obj/item/gun/projectile/internalmag/proc/bolt_act(mob/living/user)
	playsound(src.loc, 'sound/weapons/guns/interact/hpistol_cock.ogg', 45, 1)
	bolt_open = !bolt_open
	if(bolt_open)
		to_chat(user, SPAN_NOTICE("You work the action open."))
	else
		to_chat(user, SPAN_NOTICE("You close the action."))
		playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltforward.ogg', 65, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/gun/projectile/internalmag/special_check(mob/user)
	if(bolt_open)
		to_chat(user, SPAN_WARNING("You can't fire [src] while the action is open!"))
		return 0
	return ..()

/obj/item/gun/projectile/internalmag/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/gun/projectile/internalmag/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()


/*
====================
Actual weapons below
====================
*/

//Mausers in the spirit of Chinese warlord period weapons.
/obj/item/gun/projectile/internalmag/wauser
	name = "\"Wauser\" pistol"
	desc = "A mystery pistol of unknown origin, presumably some backwater workshop."
	description_antag = "A relic weapon, and even then just a copy of something ancient. The markings are in Gaeltalk, oddly enough."
	icon = 'modular/guns/icons/pistol.dmi'
	icon_state = "wauser"
	item_state = "wauser"
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 10
	matter = list(MATERIAL_PLASTEEL = 14, MATERIAL_WOOD = 4)
	price_tag = 1500
	damage_multiplier = 1.5
	penetration_multiplier = 1.5


/*/SAR Tround revolver, though trounds themselves were cut for simplicity.
/obj/item/gun/projectile/internalmag/tround
	name = "auto-revolver"
	desc = "A handgun from DRM's \"Extreme Duty\" line of weapons, firing caselss ammunition from an internal magazine."
	description_antag = "A common caseless pistol used by civilian agencies for personal defense. In this case, issued mostly to SAR teams."
	icon = 'icons/obj/guns/projectile/pistol.dmi'
	icon_state = "pistol"
	item_state = "pistol"
	w_class = ITEM_SIZE_NORMAL
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/clrifle
	caliber = CAL_CLRIFLE
	load_method = SINGLE_CASING
	max_shells = 10
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 5, MATERIAL_GLASS = 1)
	price_tag = 1000
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	fire_sound = 'sound/weapons/guns/fire/cal/35pistol.ogg'
	damage_multiplier = 1
	penetration_multiplier = 0.8
	recoil_buildup = 2.5

/obj/item/gun/projectile/internalmag/tround/dardick
	name = "\"Model-1100\" auto-revolver"
	desc = "An unusual handgun vaugely resembling the DRM auto-revolver, but with a much finer finish and feel."
	description_antag = "A strange relic weapon in remarkable condition, with what can be assumed a near-infinite value to the right customer in the right condition."
	icon = 'icons/obj/guns/projectile/wauser.dmi'
	icon_state = "dardick"
	item_state = "dardick"
	ammo_type = /obj/item/ammo_casing/pistol
	caliber = CAL_PISTOL
	max_shells = 11
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 2)
	price_tag = 20000
	fire_sound = 'sound/weapons/guns/fire/cal/35revolver.ogg'
	damage_multiplier = 1.3
	penetration_multiplier = 0.8
	recoil_buildup = 2.5

//3D printed pistol based on slaughtomatic code
/obj/item/gun/projectile/internalmag/printed
	name = "printed pistol"
	desc = "A dangerous and fragile handgun made of extruded plastic and sheet metal, a desperate weapon for desperate people. Make it count."
	description_antag = "A disposable handgun found all over the net, every alley and backwater where someone needs to be shot."
	icon = 'icons/obj/guns/projectile/printed.dmi'
	icon_state = "printed"
	item_state = "printed"
	ammo_type = /obj/item/ammo_casing/pistol
	caliber = CAL_PISTOL
	max_shells = 8
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 9)
	price_tag = 200
	fire_sound = 'sound/weapons/guns/fire/cal/35revolver.ogg'
	damage_multiplier = 0.9
	penetration_multiplier = 1.2
	recoil_buildup = 6
	rarity_value = 40
	gun_parts = list(/obj/item/stack/material/plastic = 2)
	safety = FALSE
	var/list/possible_colors = list("violet", "white", "blue", "green", "orange", "red" )
	var/choosen_color = ""
	damage_multiplier = 0.7
	penetration_multiplier = 0.2
	init_recoil = HANDGUN_RECOIL(1.6)


/obj/item/gun/projectile/internalmag/printed/Initialize()
	. = ..()
	restrict_safety = TRUE // We need safty switch but we can not use him

	choosen_color = pick(possible_colors)
	update_icon()

/obj/item/gun/projectile/internalmag/printed/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = "_" + choosen_color

	icon_state = iconstring + itemstring
	set_item_state(itemstring)

//SPAS-12
/obj/item/gun/projectile/internalmag/spas
	name = "relic scattergun"
	desc = "A mean looking weapon, like a series of pipes and what might be a cheesegrater."
	description_antag = "A rare \"SPAS\" assault shotgun, expensive even as a copy of a copy. Would be more useful if anyone knew how to use it."
	description_info = "Pistols put holes in people. Rifles put holes through people. \
			Shotguns will physically remove a chunk of shit from your opponent and throw that shit on the floor."
	icon = 'icons/obj/guns/projectile/spas.dmi'
	icon_state = "spas"
	item_state = "spas"
	max_shells = 7
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 5)
	price_tag = 8000
	damage_multiplier = 0.9
	penetration_multiplier = 0.5
	init_recoil = RIFLE_RECOIL(2.8)

/obj/item/gun/projectile/internalmag/hmrifle
	name = "craftmade rifle"
	desc = "A dangerous makeshift rifle made from scraps of tools and gun parts."
	description_antag = "A \"hammer\" pattern rifle. Similar weapons can be found all over. Terrorists, freedom fighters, all the same."
	icon = 'icons/obj/guns/projectile/hmr.dmi'
	icon_state = "hmr"
	item_state = "hmr"
	max_shells = 12
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_RIFLE
	load_method = SINGLE_CASING
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTIC = 5)
	price_tag = 800
	damage_multiplier = 2
	penetration_multiplier = 0.5
	init_recoil = RIFLE_RECOIL(1.2)

//EXPERIMENTAL
/obj/item/gun/projectile/internalmag/streetsweeper
	name = "\"Streetsweeper\" scattergun"
	desc = "Little more than a pipe and a spring-assisted cylinder of shotgun shells."
	description_antag = "A crude revolver shotgun found in many down-zones of a fairly standardized pattern."
	description_info = "Pistols put holes in people. Rifles put holes through people. \
			Shotguns will physically remove a chunk of shit from your opponent and throw that shit on the floor."
	icon = 'icons/obj/guns/projectile/hmr.dmi'
	icon_state = "streetsweeper"
	item_state = "streetsweeper"
	max_shells = 8
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	handle_casings = CYCLE_CASINGS
	slot_flags = SLOT_BACK
	caliber = CAL_RIFLE
	load_method = SINGLE_CASING
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTIC = 5)
	price_tag = 800
	damage_multiplier = 2
	penetration_multiplier = 0.5
	init_recoil = RIFLE_RECOIL(1.2)
*/

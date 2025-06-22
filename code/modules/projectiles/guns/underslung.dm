//Outright copied from Soj, don't tell Kaz.

/obj/item/gun/projectile/underslung
	name = "underslung grenade launcher"
	desc = "Not much more than a tube and a firing mechanism, this grenade launcher is designed to be fitted to a rifle."
	fire_sound = 'sound/weapons/guns/fire/cal/20rifle.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_close.ogg'
	w_class = ITEM_SIZE_NORMAL
	matter = null
	force = 5
	max_shells = 1
	safety = FALSE
	twohanded = FALSE
	caliber = CAL_GRENADE
	handle_casings = EJECT_CASINGS
	fire_sound = 'sound/weapons/guns/fire/grenadelauncher_fire.ogg'

/obj/item/gun/projectile/underslung/attack_self()
	return

//Underslung shotguns code for one gun. Naturally.
/obj/item/gun/projectile/underslung/shotgun
	name = "underslung shotgun"
	desc = "Underslung breaching shotgun for close encounters of the 5th kind."
	w_class = ITEM_SIZE_BULKY // It's literally the gun itself, kind of.
	max_shells = 4
	fire_delay = 10
	penetration_multiplier = 1.5
	damage_multiplier = 0.75
//	serial_type = "MIDA"
	caliber = CAL_SHOTGUN
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'

//Underslung taser, yes really.
/obj/item/gun/projectile/underslung/taser
	name = "underslung taser"
	desc = "Underslung less lethal launcher"
	w_class = ITEM_SIZE_NORMAL
	max_shells = 2
	fire_delay = 5

	caliber = CAL_SHOTGUN
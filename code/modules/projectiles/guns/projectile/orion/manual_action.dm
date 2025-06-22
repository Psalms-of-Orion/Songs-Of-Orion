/obj/item/gun/projectile/boltgun/pump
	name = "shotgun"
	desc = "A conspicuously massive pump-action shotgun, looks like it was made to kill buildings."
	description_info = "Pistols put holes in people. Rifles put holes through people. \
			Shotguns will physically remove a chunk of shit from your opponent and throw that shit on the floor."
//	description_antag = "A NovoRossian anti-material boarding shotgun, either a new copy or a relic from the Euruskan exodus. \
			Made from anti-drone point defense cannon barrels, supposedly."
	icon = 'modular/guns/icons/shotgun.dmi'
	icon_state = "shotgun"
	caliber = CAL_SHOTGUN
	init_recoil = RIFLE_RECOIL(3)
	wielded_item_state = "_doble"
	spawn_blacklisted = TRUE
	message = "pump"
	gun_parts = list(/obj/item/part/gun/frame/pumpgun = 1, /obj/item/part/gun/modular/grip/wood = 1, /obj/item/part/gun/modular/mechanism/shotgun = 1, /obj/item/part/gun/modular/barrel/shotgun = 1)
	price_tag = 1000
	max_shells = 4
	damage_multiplier = 2
	penetration_multiplier = 1
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTEEL = 8, MATERIAL_WOOD = 5)
	saw_off = FALSE

/obj/item/part/gun/frame/pumpgun
	name = "shotgun frame"
	desc = "How boring."
	icon_state = "frame_shotgun"
	resultvars = list(/obj/item/gun/projectile/boltgun/pump)
	gripvars = list(/obj/item/part/gun/modular/grip/wood)
	mechanismvar = /obj/item/part/gun/modular/mechanism/shotgun
	barrelvars = list(/obj/item/part/gun/modular/barrel/shotgun)

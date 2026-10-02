/obj/structure/closet/crate/astra
	name = "crate"
	desc = "A rectangular steel crate."
	icon = 'modular/icons/astra_storage.dmi'
	icon_state = "crate"

/obj/structure/closet/crate/secure/astra
	desc = "A secure crate."
	name = "Secure crate"
	icon_state = "securecrate"
	icon = 'modular/icons/astra_storage.dmi'

/obj/structure/closet/crate/astra/med
	name = "medical crate"
	icon_door = "medicalcrate"

/obj/structure/closet/crate/secure/astra/med
	name = "medical crate"
	icon_door = "securemedcrate"

/obj/structure/closet/crate/astra/eng
	name = "engineering crate"
	icon_door = "engicrate"

/obj/structure/closet/crate/secure/astra/engsecure
	name = "engineering crate"
	icon_door = "secureengicrate"

/obj/structure/closet/crate/astra/hydroponics
	name = "hydroponics crate"
	desc = "All you need to destroy those pesky weeds and pests."
	icon_door = "hydrocrate"

/obj/structure/closet/crate/secure/astra/hydrosec
	name = "secure hydroponics crate"
	desc = "A crate with a lock on it, painted in the scheme of the ship's botanists."
	icon_door = "hydrosecurecrate"

/obj/structure/closet/crate/secure/hydrosec/astra/prelocked
	req_access = list(access_hydroponics)

/obj/structure/closet/crate/astra/sec
	name = "security crate"
	icon_door = "secgearcrate"

/obj/structure/closet/crate/secure/astra/weapon
	name = "weapons crate"
	desc = "A secure weapons crate."
	icon_door = "weaponcrate"

/obj/structure/closet/crate/astra/syndicate
	name = "Syndicrate"
	icon_door = "hrcrate"

/obj/structure/closet/crate/secure/astra/syndicate
	name = "Syndicrate"
	icon_door = "securehrcrate"

/obj/structure/closet/crate/astra/sci
	name = "Human Resource crate"
	icon_door = "hrcrate"

/obj/structure/closet/crate/secure/astra/scisecure
	name = "Human Resource crate"
	icon_door = "securehrcrate"

/obj/structure/closet/crate/secure/astra/nuke
	name = "fission crate"
	icon_door = "nukecrate"

////
//PRELOADED
////

/obj/structure/closet/crate/astra/internals
	name = "internals crate"
	desc = "A internals crate."
	icon_door =  "o2crate"

/obj/structure/closet/crate/internals/populate_contents()
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)

/obj/structure/closet/crate/astra/rcd
	name = "\improper RCD crate"
	desc = "A crate with rapid construction device."
	icon_door = "crate"

/obj/structure/closet/crate/astra/rcd/populate_contents()
	new /obj/item/stack/material/compressed(src,30)
	new /obj/item/rcd(src)

/obj/structure/closet/crate/astra/solar
	name = "solar pack crate"
	icon_door = "engicrate"

/obj/structure/closet/crate/solar/populate_contents()
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/solar_assembly(src)
	new /obj/item/electronics/circuitboard/solar_control(src)
	new /obj/item/electronics/tracker(src)
	new /obj/item/paper/solar(src)

/obj/structure/closet/crate/astra/radiation
	name = "radiological response crate"
	desc = "Not great, not terrible."
	icon_door = "nukecrate"

/obj/structure/closet/crate/astra/radiation/populate_contents()
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)
	new /obj/item/storage/hcases/med/astra/rad(src)
	new /obj/item/device/geiger(src)

/obj/structure/closet/crate/secure/astra/plasma
	name = "plasma crate"
	desc = "A secure plasma crate."
	icon_door = "secureengicrate"

/obj/structure/closet/crate/kitchentools
	name = "Cookware crate"
	desc = "Everything a thriving kitchen needs to start cooking (Food not included)."
	icon_door = "hrcrate"

/obj/structure/closet/crate/kitchentools/populate_contents()
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/board(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/board(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/bowl(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/bowl(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/grill_grate(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/grill_grate(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/oven(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/oven(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/pan(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/pan(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/pot(src)
	new /obj/item/reagent_containers/cooking_with_jane/cooking_container/pot(src)

/obj/structure/closet/crate/astra/med/basic
	desc = "A shipment of bulk basic medical supplies."

/obj/structure/closet/crate/astra/med/basic/populate_contents()
	new /obj/item/storage/box/firstaid/regular(src)
	new /obj/item/storage/box/firstaid/regular(src)
	new /obj/item/storage/box/firstaid/fire(src)
	new /obj/item/storage/box/firstaid/tox(src)
	new /obj/item/storage/box/firstaid/oxy(src)
	new /obj/item/storage/box/gloves(src)
	new /obj/item/storage/box/masks(src)

/obj/structure/closet/crate/astra/med/misc
	desc = "A shipment of bulk hospital items."

/obj/structure/closet/crate/astra/med/misc/populate_contents()

	new /obj/item/storage/box/gloves(src)
	new /obj/item/storage/box/masks(src)
	new /obj/item/storage/box/masks(src)
	new /obj/item/storage/box/syringes(src)
	new /obj/item/storage/box/beakers(src)
	new /obj/item/storage/box/bodybags(src)

/obj/structure/closet/crate/secure/astra/med/hospital
	name = "field hospital crate"
	desc = "Everything needed to perform an expedient surgery."
	req_access = list(access_moebius, access_medical_equip)

/obj/structure/closet/crate/secure/astra/med/hospital/populate_contents()
	new /obj/item/storage/hcases/med/astra/surgery/contractor(src)
	new /obj/item/storage/box/firstaid/adv(src)
	new /obj/item/roller(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/reagent_containers/blood/OMinus(src)
	new /obj/item/reagent_containers/spray/sterilizine(src)
	new /obj/item/clothing/mask/surgical(src)
	new /obj/item/reagent_containers/syringe/spaceacillin(src)

/obj/structure/closet/crate/secure/astra/med/advanced
	name = "advanced medical crate"
	desc = "Expensive."
	req_access = list(access_moebius, access_medical_equip)

/obj/structure/closet/crate/secure/astra/med/advanced/populate_contents()
	new /obj/item/storage/box/firstaid/adv(src)
	new /obj/item/storage/hcases/med/astra/regular(src)
	new /obj/item/storage/hcases/med/astra/adv(src)
	new /obj/item/storage/hcases/med/astra/rad(src)
	new /obj/item/storage/hcases/med/astra/combat(src)
	new /obj/item/bodybag/cryobag/sealed(src)
	new /obj/item/bodybag/cryobag/sealed(src)
	new /obj/item/bodybag/cryobag/sealed(src)


/obj/structure/closet/crate/secure/astra/scisecure/harvest
	name = "Human Resource extraction crate"
	desc = "You have value, just not the kind you want."
	req_access = list(access_research_equipment)

/obj/structure/closet/crate/secure/astra/scisecure/harvest/populate_contents()
	new /obj/item/tool/hemostat(src)
	new /obj/item/tool/retractor(src)
	new /obj/item/tool/scalpel(src)
	new /obj/item/storage/freezer/medical(src)
	new /obj/item/storage/freezer/medical(src)
	new /obj/item/bodybag(src)
	new /obj/item/bodybag(src)
	new /obj/item/roller(src)



/obj/structure/closet/crate/secure/astra/nuke/control
	name = "control rod crate"
	icon_door = "nukecrate"
	desc = "Industrial control rods. Things must be bad if you need this."
	req_access = list(access_engine_equip)


/obj/structure/closet/crate/secure/astra/nuke/control/populate_contents()
	new /obj/item/control_rod/industrial(src)
	new /obj/item/control_rod/industrial(src)
	new /obj/item/control_rod/industrial(src)
	new /obj/item/control_rod/industrial(src)
	new /obj/item/control_rod/industrial(src)


/obj/structure/closet/crate/secure/astra/weapon/shotgun
	name = "ballistic riot suppression crate"
	desc = "Pump action shotguns and non-lethal shells."
	icon_door = "weaponcrate"
	req_access = list(access_armory)

/obj/structure/closet/crate/secure/astra/weapon/shotgun/populate_contents()
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)

/obj/structure/closet/crate/secure/astra/weapon/riot
	name = "riot suppression crate"
	desc = "Keep calm."
	icon_door = "weaponcrate"
	req_access = list(access_brig)

/obj/structure/closet/crate/secure/astra/weapon/riot/populate_contents()
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/melee/classic_baton(src)
	new /obj/item/melee/classic_baton(src)
	new /obj/item/melee/classic_baton(src)


/obj/structure/closet/crate/secure/astra/syndicate/smg
	name = "SMG crate"
	icon_door = "securehrcrate"
	desc = "Go do crimes."
	req_access = list(access_armory)

/obj/structure/closet/crate/secure/astra/syndicate/smg/populate_contents()

	if(prob(50))
		new /obj/item/gun/projectile/automatic/hk(src)
	else
		new /obj/item/gun/projectile/automatic/hk/mp5gl(src)
		new /obj/item/storage/pouch/bandolier/fourty/flash(src)
	if(prob(50))
		new /obj/item/gun/projectile/automatic/hk(src)
	else
		new /obj/item/gun/projectile/automatic/hk/mp5sd(src)
	if(prob(50))
		new /obj/item/gun/projectile/automatic/hk(src)
	else
		new /obj/item/gun/projectile/automatic/hk/mp5k(src)
	new /obj/item/storage/pouch/ammo/loaded/smg(src)
	new /obj/item/storage/pouch/ammo/loaded/smg(src)
	new /obj/item/storage/pouch/ammo/loaded/smg(src)


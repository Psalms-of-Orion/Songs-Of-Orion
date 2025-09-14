/decl/hierarchy/outfit/job/science
	hierarchy_type = /decl/hierarchy/outfit/job/science
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/jackboots
	pda_type = /obj/item/modular_computer/pda/moebius/science
	id_type = /obj/item/card/id/sci

/decl/hierarchy/outfit/job/science/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/science/rd
	name = OUTFIT_JOB_NAME("Human Resources Officer")
	l_ear = /obj/item/device/radio/headset/heads/rd
	shoes = /obj/item/clothing/shoes/reinforced
	uniform = /obj/item/clothing/under/rank/expedition_overseer
	l_hand = /obj/item/clipboard
	id_type = /obj/item/card/id/rd
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/hro
	pda_type = /obj/item/modular_computer/pda/heads/rd
	backpack_contents = list(/obj/item/oddity/secdocs = 1, /obj/item/gun/projectile/selfload/moebius = 1, /obj/item/ammo_magazine/pistol/rubber = 2)
	l_pocket = /obj/item/card/keycard/hr/level_2

/decl/hierarchy/outfit/job/science/scientist
	name = OUTFIT_JOB_NAME("HR Biotechnician")
	uniform = /obj/item/clothing/under/rank/scientist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_pocket = /obj/item/card/keycard/hr/level_3

/decl/hierarchy/outfit/job/science/wagie
	name = OUTFIT_JOB_NAME("HR WAGIE")
	uniform = /obj/item/clothing/under/rank/wagie
	shoes = /obj/item/clothing/shoes/color/black
	l_pocket = /obj/item/card/keycard/hr

/decl/hierarchy/outfit/job/science/xenobiologist
	name = OUTFIT_JOB_NAME("Moebius Xenobiologist")

/decl/hierarchy/outfit/job/science/roboticist
	name = OUTFIT_JOB_NAME("Moebius Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/robotech_jacket
	belt = /obj/item/storage/belt/utility/roboticist
	pda_slot = slot_r_store
	id_type = /obj/item/card/id/dkgrey
	pda_type = /obj/item/modular_computer/pda/moebius/roboticist

/decl/hierarchy/outfit/job/science/roboticist/New()
	..()
	backpack_overrides.Cut()

/decl/hierarchy/outfit/job/science/psychiatrist
	name = OUTFIT_JOB_NAME("Moebius Psychiatrist")
	uniform = /obj/item/clothing/under/rank/psych
	belt = /obj/item/storage/belt/medical
	l_pocket = /obj/item/reagent_containers/glass/beaker/vial/psilocybin

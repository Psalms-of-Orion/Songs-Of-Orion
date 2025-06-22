/decl/hierarchy/outfit/job/ert

	hierarchy_type = /decl/hierarchy/outfit/job/ert

	uniform = /obj/item/clothing/under/rank/security/bdu
	r_ear = /obj/item/device/radio/headset/military
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/storage/belt/tactical
	gloves = /obj/item/clothing/gloves/fingerless
	id_type = /obj/item/card/id/solcom/peace
	flags = OUTFIT_RESET_EQUIPMENT

/decl/hierarchy/outfit/job/ert/New()
	..()
	BACKPACK_OVERRIDE_SECURITY


//He gets a snazzy beret
/decl/hierarchy/outfit/job/ert/peacecommander
	name = "Peacekeeper Squad Lead"
	head = /obj/item/clothing/head/beret/red
	r_ear = /obj/item/device/radio/headset/military/commander
	glasses = /obj/item/clothing/glasses/hud/security/tac
	backpack_contents = list(/obj/item/ammo_magazine/magnum/rubber = 1,/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/clothing/mask/balaclava = 1, /obj/item/clothing/accessory/armband = 1)
	id = /obj/item/card/id/solcom/peace_sarge
	l_pocket = /obj/item/card/keycard/military/level_0

/decl/hierarchy/outfit/job/ert/peacetrooper
	name = "Peacekeeper"
	head = /obj/item/clothing/head/beret
	glasses = /obj/item/clothing/glasses/hud/security/tacfat
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/clothing/mask/balaclava = 1)
	id = /obj/item/card/id/solcom/peace
	l_pocket = /obj/item/card/keycard/military

/decl/hierarchy/outfit/job/ert/peacemedic
	name = "Peacekeeper Medic"
	head = /obj/item/clothing/head/beret/white
	glasses = /obj/item/clothing/glasses/hud/health/tacfat
	belt = /obj/item/storage/belt/medical/emt
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/storage/firstaid/adv = 1, /obj/item/clothing/mask/balaclava = 1, /obj/item/clothing/accessory/armband/med = 1)
	id = /obj/item/card/id/solcom/peace_medic
	l_pocket = /obj/item/card/keycard/military

/decl/hierarchy/outfit/job/ert/peacelogi
	name = "Peacekeeper Logistics Specialist"
	head = /obj/item/clothing/head/soft/grey
	glasses = /obj/item/clothing/glasses/hud/security/tacfat
	backpack_contents = list()


//Ready to rock RIGHT NOW for admin spawns
//Should be able to fight within a minute of loadout

/decl/hierarchy/outfit/job/ert/peacetrooper/combat
	name = "Combat - Peacekeeper Trooper"
	mask = /obj/item/clothing/mask/balaclava
	glasses = /obj/item/clothing/glasses/hud/security/tacfat
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	belt = /obj/item/storage/belt/tactical/ironhammer
	backpack_contents = list(/obj/item/storage/ration_pack = 1, /obj/item/clothing/mask/gas/ihs = 1, /obj/item/storage/briefcase/inflatable = 1, /obj/item/grenade/smokebomb = 2, /obj/item/grenade/frag = 4)
	id = /obj/item/card/id/solcom/peace
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	suit = /obj/item/clothing/suit/armor/bulletproof
	head = /obj/item/clothing/head/armor/bulletproof
	l_pocket = /obj/item/card/keycard/military
	back = /obj/item/storage/backpack/ironhammer

/decl/hierarchy/outfit/job/ert/peacemedic/combat
	name = "Combat - Peacekeeper Medic"
	glasses = /obj/item/clothing/glasses/hud/health/tacfat
	belt = /obj/item/storage/belt/medical/emt/combat
	mask = /obj/item/clothing/mask/balaclava
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	gloves = /obj/item/clothing/gloves/thick
	backpack_contents = list(/obj/item/storage/firstaid/adv = 1, /obj/item/storage/firstaid/combat = 1, /obj/item/clothing/accessory/armband/med = 1, /obj/item/grenade/smokebomb = 2, /obj/item/clothing/mask/gas/ihs = 1, /obj/item/storage/ration_pack = 1)
	id = /obj/item/card/id/solcom/peace_medic
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	suit = /obj/item/clothing/suit/armor/bulletproof
	head = /obj/item/clothing/head/deckcrew/white
	l_pocket = /obj/item/card/keycard/military
	back = /obj/item/storage/backpack/ironhammer

/decl/hierarchy/outfit/job/ert/peacecommander/combat
	name = "Combat - Peacekeeper Sargeant"
	r_ear = /obj/item/device/radio/headset/military/commander
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	belt = /obj/item/storage/belt/tactical/ironhammer
	backpack_contents = list(/obj/item/grenade/smokebomb = 2, /obj/item/device/radio/alt2 = 1, /obj/item/clothing/mask/gas/ihs = 1, /obj/item/storage/ration_pack = 1, /obj/item/storage/pouch/ammo/loaded = 1, /obj/item/clothing/accessory/armband = 1)
	id = /obj/item/card/id/solcom/peace_sarge
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	suit = /obj/item/clothing/suit/armor/bulletproof
	head = /obj/item/clothing/head/beret
	l_pocket = /obj/item/card/keycard/military/level_0
	back = /obj/item/storage/backpack/ironhammer

//Funni halfe lymf
/decl/hierarchy/outfit/job/ert/peacetrooper/hecu
	name = "HECU Trooper"
	head = /obj/item/clothing/head/beret
	mask = /obj/item/clothing/mask/gas/ihs
	glasses = /obj/item/clothing/glasses/hud/security/tacfat
	l_hand = /obj/item/ammo_magazine/smg/hv
	r_hand = /obj/item/gun/projectile/automatic/smg
	belt = /obj/item/storage/belt/tactical/ironhammer
	suit = /obj/item/clothing/suit/storage/vest/merc/black
	backpack_contents = list(/obj/item/grenade/frag = 4, /obj/item/grenade/smokebomb = 2, /obj/item/storage/ration_pack = 1, /obj/item/storage/briefcase/inflatable = 1)
	id = /obj/item/card/id/solcom/peace
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	l_pocket = /obj/item/card/keycard/military
	back = /obj/item/storage/backpack/military

/decl/hierarchy/outfit/job/ert/peacemedic/hecu
	name = "HECU Combat Medic"
	head = /obj/item/clothing/head/beret/white
	glasses = /obj/item/clothing/glasses/hud/health/tacfat
	belt = /obj/item/storage/belt/medical/emt/combat
	mask = /obj/item/clothing/mask/gas/ihs
	suit = /obj/item/clothing/suit/storage/vest/merc/black
	r_hand = /obj/item/gun/projectile/automatic/smg/mp5sd
	l_hand = /obj/item/ammo_magazine/smg/hv
	gloves = /obj/item/clothing/gloves/thick
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/storage/firstaid/adv = 1, /obj/item/storage/firstaid/combat = 1, /obj/item/clothing/accessory/armband/med = 1, /obj/item/grenade/smokebomb = 2, /obj/item/storage/ration_pack = 1)
	id = /obj/item/card/id/solcom/peace_medic
	l_pocket = /obj/item/card/keycard/military
	back = /obj/item/storage/backpack/satchel/military

/decl/hierarchy/outfit/job/ert/peacecommander/hecu
	name = "HECU Fire Team Lead"
	head = /obj/item/clothing/head/beret/red
	r_ear = /obj/item/device/radio/headset/military/commander
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/smg/mp5gl
	suit = /obj/item/clothing/suit/storage/vest/merc/black
	belt = /obj/item/storage/belt/tactical/ironhammer
	r_pocket = /obj/item/storage/pouch/ammo/loaded/smg
	backpack_contents = list(/obj/item/grenade/smokebomb = 2, /obj/item/storage/pouch/tubular/loaded/blast = 1, /obj/item/device/radio/alt2 = 1, /obj/item/storage/briefcase/inflatable = 1, /obj/item/storage/ration_pack = 1, /obj/item/clothing/accessory/armband = 1, /obj/item/storage/pouch/ammo/loaded/smg = 1)
	id = /obj/item/card/id/solcom/peace_sarge
	l_pocket = /obj/item/card/keycard/military/level_0
	back = /obj/item/storage/backpack/satchel/military


/decl/hierarchy/outfit/job/marine

	hierarchy_type = /decl/hierarchy/outfit/job/marine

	uniform = /obj/item/clothing/under/flightsuit/green
	r_ear = /obj/item/device/radio/headset/military
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id = /obj/item/card/id/solcom/marine
	back = /obj/item/storage/backpack/ironhammer

/decl/hierarchy/outfit/job/marine/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/ert/marinecommander
	name = "Solar Marine Sergeant"
	head = /obj/item/clothing/head/beret/red
	r_ear = /obj/item/device/radio/headset/military/commander
	mask = /obj/item/clothing/mask/smokable/cigarette/cigar
	l_hand = /obj/item/flame/lighter/zippo
	r_hand = /obj/item/clipboard
	belt = /obj/item/storage/belt/tactical
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/storage/ration_pack = 1, /obj/item/clothing/accessory/armband = 1)
	id = /obj/item/card/id/solcom/marine_sarge

/decl/hierarchy/outfit/job/ert/marine
	name = "Solar Marine"
	r_ear = /obj/item/device/radio/headset/military
	belt = /obj/item/storage/belt/tactical
	head = /obj/item/clothing/head/patrol/marine
	l_pocket = /obj/item/card/keycard/military

/decl/hierarchy/outfit/job/ert/corpsman
	name = "Corpsman"
	head = /obj/item/clothing/head/beret/white
	r_ear = /obj/item/device/radio/headset/military
	glasses = /obj/item/clothing/glasses/hud/health/tacfat
	belt = /obj/item/storage/belt/medical/emt/combat
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/storage/firstaid/adv = 1, /obj/item/clothing/accessory/armband/med = 1, /obj/item/storage/ration_pack = 1)
	id = /obj/item/card/id/solcom/marine_corpsman
	l_pocket = /obj/item/card/keycard/military

//Marine QRF
/decl/hierarchy/outfit/job/ert/marinevbss
	name = "Combat - Marine"
	suit = /obj/item/clothing/suit/space/void/SCAF/VBSS/equipped
	uniform = /obj/item/clothing/under/undersuit/trauma
	mask = /obj/item/clothing/mask/breath
	glasses = /obj/item/clothing/glasses/hud/security/tacfat
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	belt = /obj/item/storage/belt/tactical/ironhammer
	r_pocket = /obj/item/storage/pouch/ammo/loaded
	backpack_contents = list(/obj/item/storage/briefcase/inflatable = 1, /obj/item/storage/ration_pack = 1, /obj/item/grenade/frag = 4, /obj/item/grenade/smokebomb = 2)
	mask = /obj/item/clothing/mask/balaclava
	id = /obj/item/card/id/solcom/marine
	l_pocket = /obj/item/card/keycard/military

/decl/hierarchy/outfit/job/ert/corpsmanvbss
	name = "Combat - Marine Corpsman"
	suit = /obj/item/clothing/suit/space/void/SCAF/VBSS/equipped
	uniform = /obj/item/clothing/under/undersuit/trauma
	glasses = /obj/item/clothing/glasses/hud/health/tacfat
	belt = /obj/item/storage/belt/medical/emt/combat
	mask = /obj/item/clothing/mask/breath
	r_pocket = /obj/item/storage/pouch/ammo/loaded
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	backpack_contents = list(/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/storage/firstaid/adv = 1, /obj/item/storage/firstaid/combat = 1, /obj/item/clothing/accessory/armband/med = 1, /obj/item/grenade/smokebomb = 2, /obj/item/storage/ration_pack = 1)
	mask = /obj/item/clothing/mask/balaclava
	id = /obj/item/card/id/solcom/marine_corpsman
	l_pocket = /obj/item/card/keycard/military

/decl/hierarchy/outfit/job/ert/sargevbss
	name = "Combat - Marine Sarge"
	suit = /obj/item/clothing/suit/space/void/SCAF/VBSS/equipped
	r_ear = /obj/item/device/radio/headset/military/commander
	uniform = /obj/item/clothing/under/undersuit/trauma
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	belt = /obj/item/storage/belt/tactical/ironhammer
	r_pocket = /obj/item/storage/pouch/ammo/loaded
	backpack_contents = list(/obj/item/grenade/smokebomb = 2, /obj/item/device/radio/alt2 = 1, /obj/item/storage/briefcase/inflatable = 1, /obj/item/storage/ration_pack = 1, /obj/item/clothing/accessory/armband = 1)
	mask = /obj/item/clothing/mask/balaclava
	id = /obj/item/card/id/solcom/marine_sarge
	l_pocket = /obj/item/card/keycard/military/level_0

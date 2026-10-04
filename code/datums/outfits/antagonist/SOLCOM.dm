/decl/hierarchy/outfit/antagonist/solcom

	hierarchy_type = /decl/hierarchy/outfit/antagonist/solcom

	uniform = /obj/item/clothing/under/rank/security/bdu
	gloves = /obj/item/clothing/gloves/fingerless
	l_ear = /obj/item/device/radio/headset/military
	shoes = /obj/item/clothing/shoes/jackboots
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/peace
	flags = OUTFIT_RESET_EQUIPMENT
	l_pocket = /obj/item/storage/pouch/medical_supply/ifak
	r_pocket = /obj/item/device/lighting/toggleable/flashlight/seclite

//SOLCOM Peacekeepers, their gear is on their ship.
/decl/hierarchy/outfit/antagonist/solcom/trooper
	name = "SOLCOM Peacekeeper"
	head = /obj/item/clothing/head/beret
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac

/decl/hierarchy/outfit/antagonist/solcom/medic
	name = "SOLCOM Medic"
	head = /obj/item/clothing/head/beret/white
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/medical/emt/combat
	glasses = /obj/item/clothing/glasses/hud/health/tac
	id_type = /obj/item/card/id/solcom/peace_medic
	l_hand = /obj/item/clothing/accessory/armband/med

/decl/hierarchy/outfit/antagonist/solcom/sarge
	name = "SOLCOM Sergeant"
	head = /obj/item/clothing/head/beret/red
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	id_type = /obj/item/card/id/solcom/peace_sarge
	l_ear = /obj/item/device/radio/headset/military/commander
	l_hand = /obj/item/clothing/accessory/armband

/decl/hierarchy/outfit/antagonist/solcom/demo
	name = "SOLCOM Specialist"
	head = /obj/item/clothing/head/beret/green
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/clothing/accessory/armband/engine

//Armed, ready to go- RIGHT NOW

/decl/hierarchy/outfit/antagonist/solcom/trooper/armed
	name = "SOLCOM Assault Trooper"
	head = /obj/item/clothing/head/armor/bulletproof/peace
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	back = /obj/item/storage/backpack/satchel/haversack/security
	backpack_contents = list(/obj/item/handcuffs = 1, /obj/item/grenade/frag = 2, /obj/item/grenade/smokebomb = 2, /obj/item/tool/knife/tacknife = 1, /obj/item/plastique = 2)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/peace

/decl/hierarchy/outfit/antagonist/solcom/medic/armed
	name = "SOLCOM Combat Medic"
	head = /obj/item/clothing/head/deckcrew/medical
	suit = /obj/item/clothing/suit/armor/bulletproof
	back = /obj/item/storage/backpack/satchel/haversack/corpsman
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	l_pocket = /obj/item/storage/pouch/ammo/loaded/clrifle
	backpack_contents = list(/obj/item/storage/hcases/med/astra/combat = 1, /obj/item/storage/hcases/med/astra/adv = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 2, /obj/item/clothing/accessory/armband/med = 1)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/peace_medic

/decl/hierarchy/outfit/antagonist/solcom/sarge
	name = "SOLCOM Squad Lead"
	head = /obj/item/clothing/head/armor/bulletproof/peace
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/tactical/ironhammer
	back = /obj/item/storage/backpack/satchel/haversack/security
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	backpack_contents = list(/obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/clothing/accessory/armband = 1, /obj/item/storage/pouch/ammo/loaded/clrifle = 2)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/peace_sarge

/decl/hierarchy/outfit/antagonist/solcom/demo_armed
	name = "SOLCOM Breaching Specialist"
	head = /obj/item/clothing/head/welding
	suit = /obj/item/clothing/suit/armor/bulletproof
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/belt/utility/technomancer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	back = /obj/item/storage/backpack/satchel/military
	suit_store = /obj/item/storage/pouch/bandolier/shotgun/buckshot
	backpack_contents = list(/obj/item/grenade/flashbang = 2, /obj/item/plastique = 4, /obj/item/tool/multitool/hacktool = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/buckshot = 1,)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/peace
	r_hand = /obj/item/gun/projectile/internalmag/spas

//HECU - Always armed.
/decl/hierarchy/outfit/antagonist/solcom/hecu
	name = "HECU basic"
	head = /obj/item/clothing/head/armor/helmet/ironhammer
	suit = /obj/item/clothing/suit/storage/vest/merc/black
	mask = /obj/item/clothing/mask/gas/ihs
	id_type = /obj/item/card/id/solcom/marine
	glasses = /obj/item/clothing/glasses/hud/security/tac
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine
	uniform = /obj/item/clothing/under/rank/security/camo/mout

/decl/hierarchy/outfit/antagonist/solcom/hecu/trooper
	name = "HECU Trooper"
	id_type = /obj/item/card/id/solcom/marine
	back = /obj/item/storage/backpack/military
	r_hand = /obj/item/gun/projectile/automatic/hk
	l_hand = /obj/item/ammo_magazine/smg/hv
	suit_store = /obj/item/storage/pouch/ammo/loaded/smg
	belt = /obj/item/storage/pouch/bandolier/grenade/frag
	backpack_contents = list(/obj/item/handcuffs = 1, /obj/item/grenade/frag = 2, /obj/item/grenade/smokebomb = 2, /obj/item/tool/knife/tacknife = 1, /obj/item/plastique = 2)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine

/decl/hierarchy/outfit/antagonist/solcom/hecu/grenadier
	name = "HECU Grenadier"
	back = /obj/item/storage/backpack/military
	suit_store = /obj/item/storage/pouch/ammo/loaded/smg
	belt = /obj/item/storage/pouch/bandolier/fourty/blast
	r_hand = /obj/item/gun/projectile/automatic/hk/mp5gl
	l_hand = /obj/item/ammo_magazine/smg/hv
	backpack_contents = list(/obj/item/handcuffs = 1, /obj/item/tool/knife/tacknife = 1, /obj/item/storage/box/blast_rounds = 1, /obj/item/storage/box/teargas_rounds = 1, /obj/item/ammo_casing/grenade/emp = 2)
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine

/decl/hierarchy/outfit/antagonist/solcom/hecu/medic
	name = "HECU Corpsman"
	id_type = /obj/item/card/id/solcom/marine_corpsman
	back = /obj/item/storage/backpack/corpsman
	backpack_contents = list(/obj/item/clothing/mask/gas/ihs = 1, /obj/item/storage/hcases/med/astra/combat = 1, /obj/item/storage/hcases/med/astra/adv = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1)
	r_hand = /obj/item/gun/projectile/automatic/hk/mp5sd
	l_hand = /obj/item/ammo_magazine/smg/hv
	suit_store = /obj/item/storage/pouch/ammo/loaded/smg
	mask = /obj/item/clothing/mask/balaclava
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_corpsman
	belt = /obj/item/storage/belt/medical/emt/combat

/decl/hierarchy/outfit/antagonist/solcom/hecu/sarge
	name = "HECU Sergeant"
	glasses = /obj/item/clothing/glasses/hud/excelsior/tac
	head = /obj/item/clothing/head/beret/red
	r_hand = /obj/item/gun/projectile/internalmag/spas
	mask = /obj/item/clothing/mask/smokable/cigarette/cigar/havana
	l_hand = /obj/item/flame/lighter/zippo
	back = /obj/item/storage/backpack/satchel/haversack
	belt = /obj/item/storage/pouch/bandolier/shotgun/buckshot
	backpack_contents = list(/obj/item/clothing/mask/gas/ihs = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/buckshot = 1, /obj/item/clothing/accessory/armband = 1, /obj/item/plastique = 2, /obj/item/handcuffs = 1, /obj/item/grenade/frag = 2)
	l_ear = /obj/item/device/radio/headset/military/commander
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_sarge

//Solar Marines

/decl/hierarchy/outfit/antagonist/solcom/marine
	name = "Solar Marine"
	uniform = /obj/item/clothing/under/rank/security/bdu
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine
	suit_store = /obj/item/storage/pouch/ammo/loaded/srifle/long
	back = /obj/item/storage/backpack/satchel/haversack
	belt = /obj/item/storage/pouch/bandolier/grenade/frag
	r_hand = /obj/item/gun/projectile/automatic/stoner
	l_hand = /obj/item/ammo_magazine/srifle/hv
	mask = /obj/item/clothing/mask/balaclava
	suit = /obj/item/clothing/suit/armor/bulletproof/marine
	head = /obj/item/clothing/head/armor/helmet/ironhammer
	backpack_contents = list(/obj/item/handcuffs = 1, /obj/item/grenade/frag = 2, /obj/item/grenade/smokebomb = 2, /obj/item/tool/knife/tacknife = 1, /obj/item/plastique = 2)

/decl/hierarchy/outfit/antagonist/solcom/marine/riflegrenadier
	name = "Solar Marine Rifle-Grenadier"
	back = /obj/item/storage/backpack/satchel/haversack
	suit_store = /obj/item/storage/pouch/ammo/loaded/srifle
	belt = /obj/item/storage/pouch/bandolier/fourty/blast
	r_hand = /obj/item/gun/projectile/automatic/stoner/m203
	l_hand = /obj/item/ammo_magazine/srifle/hv
	head = /obj/item/clothing/head/armor/bulletproof
	backpack_contents = list(/obj/item/handcuffs = 1, /obj/item/tool/knife/tacknife = 1, /obj/item/storage/box/blast_rounds = 1, /obj/item/storage/box/teargas_rounds = 1, /obj/item/ammo_casing/grenade/emp = 2)
	uniform = /obj/item/clothing/under/rank/security/bdu

/decl/hierarchy/outfit/antagonist/solcom/marine/sarge
	name = "Solar Marine Sergeant"
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_sarge
	head = /obj/item/clothing/head/patrol/marine
	r_hand = /obj/item/gun/projectile/internalmag/spas
	mask = /obj/item/clothing/mask/smokable/cigarette/cigar/havana
	l_hand = /obj/item/flame/lighter/zippo
	back = /obj/item/storage/backpack/satchel/haversack/industrial
	belt = /obj/item/storage/pouch/bandolier/shotgun/buckshot
	suit_store = /obj/item/storage/pouch/bandolier/grenade/frag
	backpack_contents = list(/obj/item/tool/knife/tacknife = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/buckshot = 1, /obj/item/clothing/accessory/armband = 1, /obj/item/plastique = 2, /obj/item/clothing/head/armor/bulletproof = 1)
	l_ear = /obj/item/device/radio/headset/military/commander
	uniform = /obj/item/clothing/under/rank/security/bdu

/decl/hierarchy/outfit/antagonist/solcom/marine/medic
	name = "Solar Corpsman"
	back = /obj/item/storage/backpack/satchel/haversack/corpsman
	backpack_contents = list(/obj/item/clothing/mask/gas/ihs = 1, /obj/item/storage/hcases/med/astra/combat = 1, /obj/item/storage/hcases/med/astra/adv = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/clothing/accessory/armband/med = 1)
	r_hand = /obj/item/gun/projectile/automatic/hk/mp5sd
	l_hand = /obj/item/ammo_magazine/smg/hv
	mask = /obj/item/clothing/mask/balaclava
	belt = /obj/item/storage/pouch/ammo/loaded/smg
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_corpsman
	uniform = /obj/item/clothing/under/rank/security/camo/woodland2

//Solar Marine VBSS/ODST team

/decl/hierarchy/outfit/antagonist/solcom/vbss
	name = "VBSS Marine"
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine
	uniform = /obj/item/clothing/under/undersuit/trauma
	suit_store = /obj/item/tank/jetpack/oxygen
	back = /obj/item/storage/backpack/satchel/haversack/security
	backpack_contents = list(/obj/item/tool/knife/tacknife = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/storage/pouch/medical_supply/ifak = 1, /obj/item/plastique = 4, /obj/item/clothing/head/armor/bulletproof = 1)
	mask = /obj/item/clothing/mask/breath
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	l_hand = /obj/item/ammo_magazine/ihclrifle/hv
	r_hand = /obj/item/gun/projectile/automatic/pulse
	l_pocket = /obj/item/storage/pouch/ammo/loaded/clrifle
	suit = /obj/item/clothing/suit/space/void/SCAF/VBSS

/decl/hierarchy/outfit/antagonist/solcom/marine/sarge/vbss
	name = "VBSS Sergeant"
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_sarge
	back = /obj/item/storage/backpack/satchel/haversack/industrial
	glasses = /obj/item/clothing/glasses/hud/excelsior/tac
	suit = /obj/item/clothing/suit/space/void/SCAF/VBSS
	suit_store = /obj/item/tank/jetpack/oxygen
	backpack_contents = list(/obj/item/tool/knife/tacknife = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag = 1, /obj/item/ammo_magazine/ammobox/shotgun_small/buckshot = 1, /obj/item/clothing/accessory/armband = 1, /obj/item/plastique = 2, /obj/item/tool/crowbar/pneumatic = 1)

/decl/hierarchy/outfit/antagonist/solcom/vbss/medic
	name = "VBSS Corpsman"
	id_type = /obj/item/card/id/solcom/marine_corpsman
	back = /obj/item/storage/backpack/satchel/haversack/corpsman
	glasses = /obj/item/clothing/glasses/hud/health
	backpack_contents = list(/obj/item/storage/hcases/med/astra/combat = 1, /obj/item/storage/hcases/med/astra/adv = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 2,  /obj/item/clothing/accessory/armband/med = 1, /obj/item/clothing/head/armor/helmet/ironhammer = 1, /obj/item/tool/crowbar/pneumatic = 1)
	belt = /obj/item/storage/belt/medical/emt/combat
	id_slot = slot_wear_id
	id_type = /obj/item/card/id/solcom/marine_corpsman
//United Solar Conglomerate Federal Marshal Service - Sky Marshals.

/decl/hierarchy/outfit/antagonist/solcom/marshal
	name = "SOLCOM Sky Marshal"
	id_type = /obj/item/card/id/solcom/marshal
	uniform = /obj/item/clothing/under/undersuit/trauma
	back = /obj/item/storage/backpack/satchel/security
	backpack_contents = list(/obj/item/tool/knife/tacknife = 1, /obj/item/grenade/smokebomb = 2, /obj/item/bodybag/cryobag/sealed = 1, /obj/item/storage/pouch/medical_supply/ifak = 1, /obj/item/plastique = 4, /obj/item/stamp/military = 1)
	mask = /obj/item/clothing/mask/breath
	belt = /obj/item/storage/belt/tactical/ironhammer
	glasses = /obj/item/clothing/glasses/hud/security/tac
	suit = /obj/item/clothing/suit/space/void/SCAF/sky_marshal/equipped
	id_slot = slot_wear_id
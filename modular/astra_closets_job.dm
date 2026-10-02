
////
//SECURITY CLOSETS
////

/obj/structure/closet/secure_closet/reinforced/astra/locker/sec
	name = "security locker"
	desc = "An armored arms locker."
	req_access = list(access_security)


/obj/structure/closet/secure_closet/reinforced/astra/cap
	name = "captain's locker"
	req_access = list(access_captain)

/obj/structure/closet/secure_closet/reinforced/astra/cap/populate_contents()
	new /obj/item/storage/backpack/captain(src)
	new /obj/item/storage/backpack/satchel/captain(src)
	new /obj/item/clothing/under/rank/captain(src)
	new /obj/item/clothing/suit/storage/captain(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/armor/helmet(src)
	new /obj/item/clothing/shoes/jackboots(src)
	new /obj/item/device/radio/headset/heads/captain(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/storage/pouch/holster/belt/sheath(src)
	new /obj/item/tool/sword/saber(src)
	new /obj/item/gun/projectile/revolver(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/storage/pouch/holster(src)

/obj/structure/closet/secure_closet/reinforced/astra/hop
	name = "First Officer's locker"
	req_access = list(access_hop)

/obj/structure/closet/secure_closet/reinforced/astra/hop/populate_contents()
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/under/rank/first_officer(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/armor/helmet(src)
	new /obj/item/device/radio/headset/heads/hop(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/ids( src )
	new /obj/item/storage/pouch/holster/belt/sheath(src)
	new /obj/item/tool/sword/saber(src)
	new /obj/item/gun/projectile/revolver(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/device/flash(src)
	new /obj/item/storage/pouch/holster(src)

/obj/structure/closet/secure_closet/reinforced/astra/hos
	name = "Security Director's locker"
	req_access = list(access_hos)

/obj/structure/closet/secure_closet/reinforced/astra/hos/populate_contents()
	new /obj/item/storage/backpack/satchel/security(src)
	new /obj/item/storage/backpack/satchel/haversack/security(src)
	new /obj/item/clothing/head/patrol/sec/hos(src)
	new /obj/item/clothing/head/soft/sec/corp(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/suit/storage/toggle/hos(src)
	new /obj/item/clothing/under/rank/hos(src)
	new /obj/item/device/radio/headset/heads/hos(src)
	new /obj/item/storage/belt/tactical(src)
	new /obj/item/cell/medium/astra/disposable(src)
	new /obj/item/gun/projectile/revolver(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/clothing/accessory/badge/commander(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/storage/pouch/medical_supply/ifak(src)
	new /obj/item/clothing/glasses/hud/security/slim(src)

/obj/structure/closet/secure_closet/personal/astra/nt_sec
	name = "NT security locker"
	desc = "The old red box, oh how long has it been?"
	req_access = list(access_hos)
	access_occupy = list(access_brig)
	icon_state = "ntsec"

/obj/structure/closet/secure_closet/personal/astra/nt_sec/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/ironhammer(src)
	else
		new /obj/item/storage/backpack/sport/ironhammer(src)
	new /obj/item/storage/backpack/satchel/ironhammer(src)
	new /obj/item/device/radio/headset/headset_sec(src)
	new /obj/item/storage/belt/tactical(src)
	new /obj/item/clothing/head/soft/sec2soft(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/under/legacy/security(src)
	new /obj/item/clothing/under/rank/security/red(src)
	new /obj/item/clothing/under/rank/security/red/skirt(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/clothing/shoes/jackboots(src)
	new /obj/item/ammo_magazine/pistol/rubber(src)
	new /obj/item/ammo_magazine/pistol/rubber(src)
	new /obj/item/gun/projectile/selfload/basic(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/storage/ration_pack/ihr(src)
	new /obj/item/clothing/glasses/hud/security/tac(src)


/obj/structure/closet/secure_closet/personal/astra/security
	name = "PCRC security locker"
	desc = "Back again?"
	req_access = list(access_hos)
	access_occupy = list(access_brig)
	icon_state = "security"

/obj/structure/closet/secure_closet/personal/astra/security/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/security(src)
	else
		new /obj/item/storage/backpack/satchel/haversack/security(src)
	new /obj/item/storage/backpack/satchel/ironhammer(src)
	new /obj/item/device/radio/headset/headset_sec(src)
	new /obj/item/storage/belt/tactical(src)
	new /obj/item/clothing/head/soft/sec(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/under/rank/security(src)
	new /obj/item/clothing/under/rank/security/skirt(src)
	new /obj/item/clothing/head/beret/sec(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/clothing/shoes/color/white(src)
	new /obj/item/ammo_magazine/pistol/rubber(src)
	new /obj/item/ammo_magazine/pistol/rubber(src)
	new /obj/item/gun/projectile/selfload/basic(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/storage/ration_pack/ihr(src)
	new /obj/item/clothing/glasses/hud/security/tac(src)

/obj/structure/closet/secure_closet/personal/astra/sar
	name = "Search And Rescue Specialist locker"
	desc = "SARS tend to decorate their lockers with trinkets collected in their duties."
	req_access = list(access_medspec)
	icon_state = "sar"

/obj/structure/closet/secure_closet/personal/astra/sar/LateInitialize()
	icon_door = pick("sar", "sar2", "sar3")

/obj/structure/closet/secure_closet/personal/astra/sar/populate_contents()
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/taperoll/police(src)
	new /obj/item/clothing/head/soft/sar
	new /obj/item/clothing/head/beret/white/medic(src)
	new /obj/item/clothing/under/rank/medspec(src)
	new /obj/item/device/radio/headset/headset_sar/alt(src)
	new /obj/item/storage/belt/medical/emt(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/under/rank/medspec/skirt(src)
	new /obj/item/cell/medium/astra/disposable(src)
	new /obj/item/clothing/suit/storage/harness(src)
	new /obj/item/clothing/accessory/badge/holo/specialist(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/storage/briefcase/crimekit(src)
	new /obj/item/storage/pouch/medical_supply/ifak(src)

/obj/structure/closet/secure_closet/reinforced/astra/detective
	name = "Deputy Marshal's locker"
	req_access = list(access_forensics_lockers)

/obj/structure/closet/secure_closet/reinforced/astra/detective/populate_contents()
	new /obj/item/clothing/under/rank/inspector(src)
	new /obj/item/clothing/under/color/suit/black(src)
	new /obj/item/clothing/suit/storage/detective(src)
	new /obj/item/clothing/suit/storage/detective/brown(src)
	new /obj/item/clothing/mask/gas/ihs(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/head/soft/sec/sol(src)
	new /obj/item/clothing/shoes/reinforced/ironhammer(src)
	new /obj/item/storage/box/evidence(src)
	new /obj/item/device/radio/headset/headset_sec/alt(src)
	new /obj/item/storage/belt/tactical(src)
	new /obj/item/taperoll/police(src)
	new /obj/item/clothing/glasses/sunglasses/sechud(src)
	new/obj/item/clothing/head/beret/black/solcom(src)
	new /obj/item/cell/small/astra/disposable/high(src)
	new /obj/item/device/taperecorder(src)
	new /obj/item/gun/projectile/revolver(src)
	new /obj/item/clothing/accessory/holster(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/clothing/accessory/badge/inspector(src)
	new /obj/item/storage/briefcase/crimekit(src)
	new /obj/item/storage/box/syndie_kit/spy(src)
	new /obj/item/clothing/glasses/hud/security/slim(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/armor
	name = "riot locker"
	desc = "An armored arms locker."
	req_access = list(access_armory)
/obj/structure/closet/secure_closet/reinforced/astra/locker/armor/populate_contents()
	new /obj/item/clothing/head/armor/faceshield/riot(src)
	new /obj/item/clothing/suit/armor/vest/security(src)
	new /obj/item/clothing/head/armor/faceshield/riot(src)
	new /obj/item/clothing/suit/armor/vest/security(src)
	new /obj/item/clothing/head/armor/faceshield/riot(src)
	new /obj/item/clothing/suit/armor/vest/security(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/armor/bulletproof/poverty(src)
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/melee/classic_baton(src)
	new /obj/item/melee/classic_baton(src)
	new /obj/item/melee/classic_baton(src)
	new /obj/item/shield/riot/dozershield(src)
	new /obj/item/shield/riot/dozershield(src)
	new /obj/item/shield/riot/dozershield(src)
	new /obj/item/storage/pouch/bandolier/grenade/teargas(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/armory
	name = "lethal arms locker"
	desc = "An armored arms locker."
	req_access = list(access_armory)
/obj/structure/closet/secure_closet/reinforced/astra/locker/armory/populate_contents()
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/gun/projectile/boltgun/pump(src)
	new /obj/item/gun/projectile/automatic/hk(src)
	new /obj/item/gun/energy/cat(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/ammo
	name = "lethal ammunition locker"
	desc = "An armored arms locker."
	req_access = list(access_armory)
/obj/structure/closet/secure_closet/reinforced/astra/locker/ammo/populate_contents()
	new /obj/item/storage/pouch/ammo/loaded/smg(src)
	new /obj/item/storage/pouch/bandolier/shotgun/buckshot(src)
	new /obj/item/storage/pouch/bandolier/shotgun/buckshot(src)
	new /obj/item/storage/pouch/bandolier/shotgun/buckshot(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small/pellet(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small/pellet(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small(src)
	new /obj/item/cell/medium/astra/disposable/high(src)
	new /obj/item/cell/medium/astra/disposable/high(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/rubber
	name = "stun ammunition locker"
	desc = "An armored arms locker."
	req_access = list(access_armory)
/obj/structure/closet/secure_closet/reinforced/astra/locker/rubber/populate_contents()
	new /obj/item/storage/pouch/bandolier/grenade/flashbang(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)
	new /obj/item/storage/pouch/bandolier/shotgun/bean(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag(src)
	new /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag(src)
	new /obj/item/cell/medium/astra/disposable/high(src)
	new /obj/item/cell/medium/astra/disposable/high(src)

////
//MEDICAL CLOSETS
////

/obj/structure/closet/secure_closet/reinforced/astra/locker/med
	name = "medical locker"
	desc = "An armored storage locker."
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/astra/medicine
	name = "medicine closet"
	desc = "Filled with medical junk."
	icon_state = "med"
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/astra/medicine/populate_contents()
	new /obj/item/storage/box/autoinjectors(src)
	new /obj/item/storage/box/syringes(src)
	new /obj/item/reagent_containers/dropper(src)
	new /obj/item/reagent_containers/dropper(src)
	new /obj/item/reagent_containers/glass/beaker(src)
	new /obj/item/reagent_containers/glass/beaker(src)
	new /obj/item/reagent_containers/glass/bottle/inaprovaline(src)
	new /obj/item/reagent_containers/glass/bottle/inaprovaline(src)
	new /obj/item/reagent_containers/glass/bottle/antitoxin(src)
	new /obj/item/reagent_containers/glass/bottle/antitoxin(src)

/obj/structure/closet/secure_closet/astra/anesthetics
	name = "anesthetics closet"
	desc = "Used to knock people out."
	icon_state = "med"
	req_access = list(access_moebius)

/obj/structure/closet/secure_closet/astra/anesthetics/populate_contents()
	new /obj/item/tank/anesthetic(src)
	new /obj/item/tank/anesthetic(src)
	new /obj/item/tank/anesthetic(src)
	new /obj/item/clothing/mask/breath/medical(src)
	new /obj/item/clothing/mask/breath/medical(src)
	new /obj/item/clothing/mask/breath/medical(src)
	new /obj/item/tool/wrench(src)

/obj/structure/closet/secure_closet/personal/astra/nt_doctor
	name = "NT doctor's locker"
	req_access = list(access_cmo)
	access_occupy = list(access_medical_equip)
	icon_state = "med"
	icon_door = "med2"

/obj/structure/closet/secure_closet/personal/astra/nt_doctor/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/medical(src)
	else
		new /obj/item/storage/backpack/satchel/medical(src)
	new /obj/item/clothing/glasses/hud/health/tac(src)
	new /obj/item/clothing/under/legacy/medical(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/alt(src)
	new /obj/item/clothing/gloves/latex/nitrile(src)
	new /obj/item/clothing/shoes/color/white(src)
	new /obj/item/taperoll/medical(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/head/beret/white/medic(src)
	new /obj/item/clothing/head/beret/nt(src)
	new /obj/item/storage/belt/medical/(src)
	new /obj/item/clothing/suit/apron(src)
	new /obj/item/clothing/under/legacy/chemist(src)

////
//MEDICAL CLOSETS - BROTHERHOOD
////

/obj/structure/closet/secure_closet/personal/astra/brotherhoodmedic
	name = "Clinic Medic's locker"
	req_access = list(access_cmo)
	access_occupy = list(access_medical_equip)
	icon_state = "medical"

/obj/structure/closet/secure_closet/personal/astra/brotherhoodmedic/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/satchel/haversack/corpsman(src)
	else
		new /obj/item/storage/backpack/satchel/corpsman(src)
	new /obj/item/clothing/under/rank/medical(src)
	new /obj/item/clothing/shoes/color/white(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/old(src)
	new /obj/item/storage/belt/medical/(src)
	new /obj/item/clothing/head/beret/white/medic(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/device/radio(src)
	new /obj/item/storage/pouch/medical_supply(src)
	new /obj/item/clothing/head/soft/mime(src)
	new /obj/item/clothing/glasses/hud/health/tac(src)
	new /obj/item/clothing/head/surgery/green(src)

/obj/structure/closet/secure_closet/personal/astra/volunteer
	name = "Volunteer's locker"
	req_access = list(access_cmo)
	access_occupy = list(access_medical_equip)
	icon_state = "brotherhood"

/obj/structure/closet/secure_closet/personal/astra/volunteer/populate_contents()
	if(prob(50))
		new /obj/item/clothing/under/rank/volunteer(src)
	else
		new /obj/item/clothing/under/rank/volunteer/turtle(src)

	if(prob(50))
		new /obj/item/storage/backpack/satchel/leather(src)
	else
		new /obj/item/storage/backpack/satchel/haversack/industrial(src)

	if(prob(50))
		new /obj/item/clothing/shoes/color/white(src)
	else
		new /obj/item/clothing/shoes/reinforced(src)

	if(prob(50))
		new /obj/item/melee/classic_baton(src)
		new /obj/item/storage/pouch/holster/baton(src)
	else
		new /obj/item/mop(src)
		new /obj/item/reagent_containers/glass/bucket(src)

	new /obj/item/clothing/head/beret/white(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/device/radio(src)
	new /obj/item/storage/pouch/small_generic(src)
	new /obj/item/clothing/head/soft/mime(src)
	new /obj/item/soap(src)

/obj/structure/closet/secure_closet/reinforced/astra/cmo
	name = "Brotherhood Coordinator's locker"
	req_access = list(access_cmo)

/obj/structure/closet/secure_closet/reinforced/astra/cmo/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/satchel/haversack/corpsman(src)
	else
		new /obj/item/storage/backpack/satchel/leather(src)
	new /obj/item/clothing/suit/bio_suit(src)
	new /obj/item/clothing/shoes/color/white(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/gloves/latex/nitrile(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/under/rank/medical(src)
	new /obj/item/clothing/under/rank/volunteer/turtle(src)
	new /obj/item/clothing/under/rank/coordinator(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/old(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/device/radio/headset/heads/cmo(src)
	new /obj/item/device/flash(src)
	new /obj/item/reagent_containers/hypospray(src)
	new /obj/item/storage/belt/medical(src)
	new /obj/item/storage/pouch/medical_supply(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/gun/projectile/revolver/holy(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/ammo_magazine/slmagnum/rubber(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/storage/pouch/holster(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/clothing/head/surgery/green(src)

////
//SCIENCE - LEGACY
////

/obj/structure/closet/secure_closet/personal/astra/ntsci
	name = "NT scientist's locker"
	req_access = list(access_rd)
	access_occupy = list(access_tox_storage)
	icon_state = "generic"
	icon_door = "pink"

/obj/structure/closet/secure_closet/personal/astra/ntsci/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/purple/scientist(src)
	else
		new /obj/item/storage/backpack/satchel/purple/scientist(src)
	new /obj/item/clothing/under/legacy/science(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/alt(src)
	new /obj/item/clothing/shoes/jackboots(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/device/radio(src)
	new /obj/item/tank/air(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/glasses/regular/goggles/clear(src)
	new /obj/item/clothing/head/beret/violet(src)

////
//JANITOR - LEGACY
////

/obj/structure/closet/astra/jcloset
	name = "janitorial closet" //legacy janitor
	desc = "A storage unit for janitorial clothes and gear."
	icon_state = "locker"

/obj/structure/closet/astra/jcloset/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/sport/purple(src)
	else
		new /obj/item/storage/backpack/satchel(src)
	new /obj/item/clothing/under/legacy/janitor(src)
	new /obj/item/device/radio/alt1(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/head/soft/purple(src)
	new /obj/item/clothing/head/beret/violet(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/device/lightreplacer(src)
	new /obj/item/storage/bag/trash(src)
	new /obj/item/clothing/shoes/galoshes(src)
	new /obj/item/mop(src)
	new /obj/item/soap/nanotrasen(src)
	new /obj/item/storage/pouch/small_generic(src) // Because I feel like poor janitor gets it bad.

////
//CARGO - LEGACY
////

/obj/structure/closet/astra/cargo
	name = "Cargo Tech closet"
	desc = "How far have we gone?"
	icon_state = "generic"
	icon_door = "yellow"

/obj/structure/closet/astra/cargo/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/sport(src)
	else
		new /obj/item/storage/backpack/satchel(src)
	new /obj/item/clothing/under/legacy/cargo(src)
	new /obj/item/device/radio/alt1(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/clothing/head/soft(src)
	new /obj/item/clothing/head/beret/yellow(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/storage/bag/trash(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/storage/pouch/small_generic(src)
	new /obj/item/device/scanner/price(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/cargo
	name = "cargo locker"
	desc = "An armored storage locker."
	req_access = list(access_cargo)
////
//BOTANY - LEGACY
////

/obj/structure/closet/astra/botany
	name = "Botanist closet"
	desc = "How far have we gone?"
	icon_state = "generic"
	icon_door = "green"

/obj/structure/closet/astra/botany/populate_contents()

	new /obj/item/storage/backpack/botanist(src)
	new /obj/item/storage/backpack/sport/botanist(src)
	new /obj/item/storage/backpack/satchel/botanist(src)
	new /obj/item/clothing/head/soft/green(src)
	new /obj/item/clothing/head/beret/green(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/clothing/gloves/botanic_leather(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/storage/pouch/engineering_tools(src)
	new /obj/item/tool/minihoe(src)
	new /obj/item/tool/shovel/spade(src)
	new /obj/item/tool/wirecutters(src)

////
//HR - HUMAN RESOURCES
////

/obj/structure/closet/secure_closet/reinforced/astra/locker/hr
	name = "storgae locker"
	desc = "A heavy metal storatge locker."
	req_access = list(access_tox)

/obj/structure/closet/secure_closet/personal/astra/scientist
	name = "Biotechnician locker"
	req_access = list(access_rd)
	access_occupy = list(access_tox_storage)
	icon_state = "science"

/obj/structure/closet/secure_closet/personal/astra/scientist/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/medical(src)
	else
		new /obj/item/storage/backpack/satchel/medical(src)

	if(prob(50))
		new /obj/item/clothing/glasses/hud/health(src)
	else
		new /obj/item/clothing/glasses/hud/health/big(src)

	new /obj/item/clothing/under/rank/scientist(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat(src)
	new /obj/item/clothing/shoes/color/aqua(src)
	new /obj/item/clothing/gloves/latex/nitrile(src)
	new /obj/item/device/radio(src)
	new /obj/item/storage/belt/medical/(src)
	new /obj/item/clothing/head/soft/aqua(src)
	new /obj/item/clothing/head/beret/aqua(src)
	new /obj/item/clothing/mask/bandana/aqua(src)

/obj/structure/closet/secure_closet/reinforced/astra/hro
	name = "Human Resource Officer's locker"
	req_access = list(access_rd)

/obj/structure/closet/secure_closet/reinforced/astra/hro/populate_contents()
	new /obj/item/storage/backpack/satchel/medical(src)
	new /obj/item/clothing/under/rank/expedition_overseer(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/hro(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/device/radio/headset/heads/rd(src)
	new /obj/item/tank/air(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/device/flash(src)
	new /obj/item/melee/telebaton(src)
	new /obj/item/storage/pouch/holster/baton(src)
	new /obj/item/clothing/mask/bandana/aqua(src)
	new /obj/item/clothing/head/beret/aqua(src)

	if(prob(50))
		new /obj/item/clothing/glasses/hud/health(src)
	else
		new /obj/item/clothing/glasses/hud/health/big(src)

/obj/structure/closet/astra/wagie
	name = "WAGIE closet" //legacy janitor
	desc = "A storage unit for debt slaves and their accessories."
	icon_state = "locker"

/obj/structure/closet/astra/jcloset/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/sport(src)
	else
		new /obj/item/storage/backpack/satchel(src)

	if(prob(50))
		new /obj/item/clothing/under/rank/wagie(src)
	else
		new /obj/item/clothing/under/rank/wagie/alt(src)

	new /obj/item/clothing/suit/bio_suit(src)
	new /obj/item/device/radio/alt1(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/tank/air(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/head/soft/grey(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/caution(src)
	new /obj/item/device/lightreplacer(src)
	new /obj/item/storage/bag/trash(src)
	new /obj/item/clothing/shoes/galoshes/black(src)
	new /obj/item/mop(src)
	new /obj/item/soap(src)
	new /obj/item/storage/pouch/small_generic(src)
	new /obj/item/holyvacuum(src)
	new /obj/item/gun/matter/launcher/nt_sprayer(src)

/obj/structure/closet/astra/chefcloset
	name = "Service WAGIE closet"
	desc = "Storage for cooking equipment and indentured servants."
	icon_state = "locker"

/obj/structure/closet/chefcloset/populate_contents()
	new /obj/item/clothing/under/waiter(src)
	new /obj/item/clothing/under/waiter/skirt(src)
	new /obj/item/device/radio/alt1(src)
	new /obj/item/storage/box/mousetraps(src)
	new /obj/item/reagent_containers/drywet(src)
	new /obj/item/material/kitchen/rollingpin(src)
	new /obj/item/tool/knife(src)
	new /obj/item/tool/shovel/spatula(src)
	new /obj/item/book/manual/chef_recipes(src)
	if(prob(50))
		new /obj/item/clothing/under/kimono(src)
		new /obj/item/clothing/shoes/sandal(src)
		new /obj/item/clothing/head/collectable/kitty(src)
	else
		new /obj/item/clothing/under/maid(src)
		new /obj/item/clothing/shoes/reinforced(src)
		new /obj/item/clothing/head/collectable/rabbitears(src)
	new /obj/item/clipboard(src)
////
//SYNDICATE - CARGO
////

/obj/structure/closet/secure_closet/personal/astra/hacker
	name = "Hacker locker"
	req_access = list(access_merchant)
	access_occupy = list(access_robotics)
	icon_state = "cargo"

/obj/structure/closet/secure_closet/personal/astra/hacker/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack(src)
	else
		new /obj/item/storage/backpack/duffelbag(src)

	new /obj/item/clothing/under/rank/hacker(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/syndicate(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/device/radio(src)
	new /obj/item/clothing/head/soft/synd(src)
	new /obj/item/clothing/head/beret/red/syndicate(src)
	new /obj/item/device/scanner/price(src)

/obj/structure/closet/astra/cargonia
	name = "Logistics Tech closet"
	desc = "A storage unit for debt slaves and their accessories."
	icon_state = "locker"

/obj/structure/closet/astra/cargonia/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack(src)
	else
		new /obj/item/storage/backpack/duffelbag(src)

	if(prob(50))
		new /obj/item/clothing/under/rank/cargotech(src)
	else
		new /obj/item/clothing/under/flightsuit/cargo(src)

	new /obj/item/device/radio/alt1(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/tank/air(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/head/soft/synd(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/storage/bag/trash(src)
	new /obj/item/soap(src)
	new /obj/item/storage/pouch/small_generic(src)
	new /obj/item/device/scanner/price(src)

/obj/structure/closet/secure_closet/personal/astra/qm
	name = "Syndicate Officer's locker"
	req_access = list(access_merchant)
	icon_state = "syndicate"

/obj/structure/closet/secure_closet/personal/astra/qm/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/medical(src)
	else
		new /obj/item/storage/backpack/satchel/medical(src)

	new /obj/item/clothing/under/syndicate(src)
	new /obj/item/clothing/under/syndicate/skirt(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/syndicate(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/device/radio/headset/heads/merchant(src)
	new /obj/item/clothing/head/soft/synd(src)
	new /obj/item/clothing/head/beret/black/syndicate(src)
	new /obj/item/device/scanner/price(src)

////
//ASTRA STARWORKS - ENGINEERING
////
/obj/structure/closet/secure_closet/reinforced/astra/ce
	name = "Chief Engineer's locker"
	req_access = list(access_ce)

/obj/structure/closet/secure_closet/reinforced/astra/ce/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/satchel/haversack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/industrial(src)
	new /obj/item/blueprints(src)
	new /obj/item/clothing/under/rank/exultant(src)
	new /obj/item/clothing/head/hardhat/white(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/gloves/insulated(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/device/radio/headset/heads/ce(src)
	new /obj/item/storage/hcases/tool/mechanical(src)
	new /obj/item/clothing/under/frog/engineer(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/device/flash(src)
	new /obj/item/taperoll/engineering(src)
	new /obj/item/storage/pouch/engineering_supply(src)
	new /obj/item/storage/pouch/engineering_material(src)
	new /obj/item/clothing/head/hardhat/white(src)
	new /obj/item/clothing/shoes/workboots(src)
	new/obj/item/clothing/shoes/jackboots/duty(src)
	new /obj/item/clothing/suit/storage/hazardvest/orange(src)

/obj/structure/closet/secure_closet/personal/astra/engineering_personal
	name = "Engineer's locker"
	req_access = list(access_ce)
	access_occupy = list(access_engine_equip)
	icon_state = "eng_secure"

/obj/structure/closet/secure_closet/personal/astra/engineering_personal/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/industrial(src)
	new /obj/item/taperoll/engineering(src)
	new /obj/item/storage/hcases/tool/mechanical(src)
	new /obj/item/clothing/under/rank/engineer(src)
	new /obj/item/clothing/head/hardhat(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/gloves/insulated/cheap(src)
	new /obj/item/device/radio/headset/headset_eng(src)
	new /obj/item/clothing/suit/storage/hazardvest/orange(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/storage/pouch/engineering_tools (src)
	new /obj/item/storage/belt/utility(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/eng
	name = "engineering locker"
	desc = "An armored storage locker."
	req_access = list(access_engine_equip)

/obj/structure/closet/secure_closet/reinforced/astra/locker/mining
	name = "equipment locker"
	desc = "An armored storage locker."
	req_access = list(access_mining)

/obj/structure/closet/secure_closet/personal/astra/erp
	name = "ERP equipment"
	icon_state = "mining"
	req_access = list(access_ce)
	access_occupy = list(access_mining)

/obj/structure/closet/secure_closet/personal/astra/erp/LateInitialize()
	icon_door = pick("mining", "mining2", "mining3", "bomb", "generic", "syndicate")

/obj/structure/closet/secure_closet/personal/astra/erp/populate_contents()

	if(prob(50))
		new /obj/item/storage/backpack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/haversack/industrial(src)

	if(prob(50))
		new /obj/item/clothing/gloves/thick(src)
	else
		new /obj/item/clothing/gloves/fingerless(src)

	if(prob(50))
		new/obj/item/clothing/shoes/jackboots/duty(src)
	else
		new /obj/item/clothing/shoes/workboots(src)

	if(prob(50))
		new /obj/item/clothing/under/rank/miner(src)
	else
		new /obj/item/clothing/under/rank/diver(src)

	new /obj/item/device/radio/alt2(src)
	new /obj/item/device/radio/headset/headset_eng/erp(src)
	new /obj/item/cell/large/astra/disposable(src)
	new /obj/item/cell/medium/astra/disposable(src)
	new /obj/item/cell/small/astra/disposable/high(src)
	new /obj/item/device/scanner/gas(src)
	new /obj/item/storage/bag/ore(src)
	new /obj/item/device/lighting/toggleable/flashlight/heavy(src)
	new /obj/item/tool/shovel(src)
	new /obj/item/tool/pickaxe(src)
	new /obj/item/tool/pickaxe/jackhammer(src)
	new /obj/item/device/t_scanner(src)
	new /obj/item/gun/projectile/flare_gun(src)
	new /obj/item/ammo_casing/flare(src)

/obj/structure/closet/secure_closet/personal/astra/diveboss
	name = "ERP equipment"
	icon_state = "mining"
	icon_door = "eng_secure"
	req_access = list(access_ce)

/obj/structure/closet/secure_closet/personal/astra/diveboss/populate_contents()

	if(prob(50))
		new /obj/item/storage/backpack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/haversack/industrial(src)

	if(prob(50))
		new /obj/item/clothing/gloves/thick(src)
	else
		new /obj/item/clothing/gloves/fingerless(src)

	if(prob(50))
		new/obj/item/clothing/shoes/jackboots/duty(src)
	else
		new /obj/item/clothing/shoes/workboots(src)

	if(prob(50))
		new /obj/item/clothing/under/frog/erp(src)
	else
		new /obj/item/clothing/under/flightsuit/green(src)

	new /obj/item/device/radio/alt2(src)
	new /obj/item/clothing/under/rank/diveboss(src)
	new /obj/item/clothing/suit/storage/gorka(src)
	new /obj/item/device/radio/headset/heads/ce/foreman(src)
	new /obj/item/cell/large/astra/disposable(src)
	new /obj/item/cell/medium/astra/disposable(src)
	new /obj/item/cell/small/astra/disposable/high(src)
	new /obj/item/device/scanner/gas(src)
	new /obj/item/storage/bag/ore(src)
	new /obj/item/device/lighting/toggleable/flashlight/heavy(src)
	new /obj/item/tool/shovel(src)
	new /obj/item/tool/pickaxe(src)
	new /obj/item/tool/pickaxe/jackhammer(src)
	new /obj/item/device/t_scanner(src)
	new /obj/item/gun/projectile/flare_gun(src)
	new /obj/item/ammo_casing/flare(src)

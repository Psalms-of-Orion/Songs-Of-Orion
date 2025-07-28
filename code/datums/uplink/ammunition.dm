/*************
* Ammunition *
*************/
/datum/uplink_item/item/ammo
	item_cost = 4
	category = /datum/uplink_category/ammunition

/////pistol magnum pistols and smgs/////

/datum/uplink_item/item/ammo/pistol/highvelocity
	name = "Holdout pistol HV magazine"
	desc = "Holdout pistol magazine, loaded with high velocity ammunition.  Can fit 10 bullets."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/pistol/highvelocity

/datum/uplink_item/item/ammo/hpistol/highvelocity
	name = "Highcap pistol HV magazine"
	desc = "Highcap pistol magazine, loaded with high velocity ammunition.  Can fit 16 bullets."
	item_cost = 2
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/hpistol/highvelocity

/datum/uplink_item/item/ammo/smg/highvelocity
	name = "SMG pistol HV magazine"
	desc = "SMG pistol magazine, loaded with high velocity ammunition. Can fit 35 bullets."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/smg/hv

/datum/uplink_item/item/ammo/magnum/hv
	name = "Standard magnum HV magazine"
	desc = "Standard magnum magazine, loaded with high velocity ammunition. Can fit 10 bullets."
	item_cost = 2
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/magnum/hv

/datum/uplink_item/item/ammo/magnum/msmg/hv
	name = "SMG magnum HV magazine"
	desc = "SMG magnum magazine, loaded with high velocity ammunition. Can fit 25 bullets."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/msmg/hv

///// pistol and magnum revolvers////

/datum/uplink_item/item/ammo/slpistol

/datum/uplink_item/item/ammo/slpistol/highvelocity
	name = "pistol HV SL"
	desc = "Contains 3 standard pistol speed loaders, loaded with high-velocity ammunition. Can fit 6 bullets."
	item_cost = 2
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/syndie_kit/slpistol/hv


/datum/uplink_item/item/ammo/slmagnum/highvelocity
	name = "magnum magnum HV SL box"
	desc = "Contains 3 magnum HV speed loaders, loaded with high velocity ammunition. Can fit 6 bullets."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/syndie_kit/slmagnum/highvelocity


/////carbine/////

/datum/uplink_item/item/ammo/srifle

/datum/uplink_item/item/ammo/srifle/highvelocity
	name = "Carbine HV magazine"
	desc = "Standard carbine magazine with high velocity ammunition. Well known for it's armor penetrating capabilities. Can fit 25 bullets."
	item_cost = 3
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/srifle/hv

/datum/uplink_item/item/ammo/sl_srifle/highvelocity
	name = "Carbine HV ammo strip"
	desc = "Contains 2 standard carbine ammo strips, loaded with high velocity ammunition. Can fit 5 bullets."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/syndie_kit/slsrifle/hv

/datum/uplink_item/item/ammo/ihclrifle/highvelocity
	name = "Caseless HV magazine"
	desc = "Standard caseless magazine with high velocity ammunition. Used mostly in IHS carbines. Can fit 30 bullets."
	item_cost = 3
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ihclrifle/hv

/datum/uplink_item/item/ammo/cspistol/highvelocity
	name = "Caseless HV pistol magazine"
	desc = "Pistol caseless magazine with high-velocity ammunition. Used solely in Mandella. Can fit 10 bullets."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/cspistol/hv

/datum/uplink_item/item/ammo/lrifle/highvelocity
	name = "Rifle HV magazine"
	desc = "Long rifle magazine with high velocity ammunition. Can fit 30 bullets."
	item_cost = 3
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/lrifle/highvelocity

/datum/uplink_item/item/ammo/sl_lrifle/highvelocity
	name = "Rifle HV ammo strip"
	desc = "Contains 2 standard rifle ammo strips, loaded with high velocity ammunition. Can fit 5 bullets."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/syndie_kit/sllrifle/hv

//// HV ammo packets ////

/datum/uplink_item/item/ammo/pistol_hv
	name = "pistol HV ammo packet"
	desc = "pistol ammo packet with high velocity ammunition. Contains 70 bullets. Cheaper than buying in magazines."
	item_cost = 6
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/pistol/hv

/datum/uplink_item/item/ammo/magnum_hv
	name = "magnum Magnum HV ammo packet"
	desc = "magnum ammo packet with high velocity ammunition. Contains 50 bullets. Cheaper than buying in magazines."
	item_cost = 6
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/magnum/hv

/datum/uplink_item/item/ammo/srifle_hv
	name = "Carbine HV ammo packet"
	desc = "carbine ammo packet with high velocity ammunition. Contains 50 bullets. Cheaper than buying in magazines."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/srifle_small/hv

/datum/uplink_item/item/ammo/clrifle_hv
	name = "caseless Rifle HV ammo packet"
	desc = "caseless ammo packet with high velocity ammunition. Contains 60 bullets. Cheaper than buying in magazines."
	item_cost = 5
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/clrifle_small/hv

/datum/uplink_item/item/ammo/lrifle_hv
	name = "rifle Rifle HV ammo packet"
	desc = "rifle ammo packet with high velocity ammunition. Contains 60 bullets. Cheaper than buying in magazines."
	item_cost = 5
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/lrifle_small/hv

//// Shotguns////

/*datum/uplink_item/item/ammo/m12
	name = "M12 shotgun mag with slugs"
	desc = "M12 shotgun magazine with slug shells loaded. Can fit 8 shells."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/m12

/datum/uplink_item/item/ammo/m12/beanbag
	name = "M12 shotgun mag with beanbags"
	desc = "M12 shotgun magazine with beanbag shells loaded. Can fit 8 shells."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/m12/beanbag

/datum/uplink_item/item/ammo/m12/pellet
	name = "M12 shotgun mag with buckshot"
	desc = "M12 shotgun magazine with buckshot shells loaded. Can fit 8 shells."
	item_cost = 1
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/m12/pellet
*/
////special////

/datum/uplink_item/item/ammo/sniperammo
	name = "Anti material \"Penetrator\""
	desc = "A box full of AMR shells. Has 15 shells inside."
	item_cost = 3
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/sniperammo

/datum/uplink_item/item/ammo/sniperammo/emp
	name = "Anti material \"Blackout\""
	desc = "A box full of AMR EMP shells. EMP shells release an electromagnetic pulse on impact. Has 15 shells inside."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/sniperammo/emp

/datum/uplink_item/item/ammo/sniperammo/uranium
	name = "Anti material \"Meltdown\""
	desc = "A box full of AMR depleted uranium shells with high armor-piercing power. radiation sickness included. Has 15 shells inside."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/sniperammo/uranium

/datum/uplink_item/item/ammo/sniperammo/breach
	name = "Anti material \"Breacher\""
	desc = "A box full of low velocity AMR breaching shells, designed not to pierce, but to destroy structures from a distance. Close-ranged shots have less destructive power. Has 15 shells inside."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/storage/box/sniperammo/breach

/datum/uplink_item/item/ammo/sniperammo/large
	name = "Anti material \"Penetrator\" crate"
	desc = "A box full of AMR shells. Has 30 shells inside."
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/ammobox/antim

/datum/uplink_item/item/ammo/darts
	name = "Darts"
	item_cost = 2
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/chemdart

/datum/uplink_item/item/ammo/dallas
	name = "caseless ammo box magazine"
	desc = "A box magazine designed for the use of the uncommon Dallas Pulse Rifle. Contains 99 rounds."
	item_cost = 9
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/c10x24

/datum/uplink_item/item/ammo/pk
	name = "rifle ammo box magazine"
	desc = "A box magazine for Light Machine Guns. Contains 80 rounds"
	item_cost = 8
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/ammo_magazine/lrifle/pk
//hyper-class cells, better than what you'll find in a vendor or maints.

/datum/uplink_item/item/ammo/cell/small
	name = "Small Power Cell"
	item_cost = 3
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/cell/small/hyper

/datum/uplink_item/item/ammo/cell/medium
	name = "Medium Power Cell"
	item_cost = 4
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/cell/medium/hyper

/datum/uplink_item/item/ammo/cell/large
	name = "Large Power Cell"
	item_cost = 5
	antag_roles = list(ROLE_CONTRACTOR,ROLE_MARSHAL,ROLE_INQUISITOR,ROLE_MERCENARY,ROLE_CARRION)
	path = /obj/item/cell/large/hyper

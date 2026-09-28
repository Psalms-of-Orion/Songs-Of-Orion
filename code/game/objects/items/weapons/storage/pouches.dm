/obj/item/storage/pouch
	name = "pouch"
	desc = "Can hold various things."
	icon = 'icons/inventory/pockets/icon.dmi'
	//icon_state = "pouch" //TODO
	//item_state = "pouch" //TODO
	item_flags = DRAG_AND_DROP_UNEQUIP
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_BELT //Pouches can be worn on belt
	storage_slots = 1
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = DEFAULT_SMALL_STORAGE
	matter = list(MATERIAL_BIOMATTER = 12)
	attack_verb = list("pouched")
	spawn_blacklisted = FALSE
	rarity_value = 10
	spawn_tags = SPAWN_TAG_POUCH
	price_tag = 120
	bad_type = /obj/item/storage/pouch
	dropped_sound = 'sound/items/drop_sounds/gloves.ogg'
	pickup_sound = 'sound/items/drop_sounds/food.ogg'
	var/sliding_behavior = FALSE
	var/show_above_suit = 1

/obj/item/storage/pouch/verb/toggle_slide()
	set name = "Toggle Slide"
	set desc = "Toggle the behavior of last item in [src] \"sliding\" into your hand."
	set category = "Object"

	sliding_behavior = !sliding_behavior
	to_chat(usr, SPAN_NOTICE("Items will now [sliding_behavior ? "" : "not"] slide out of [src]"))

/obj/item/storage/pouch/attack_hand(mob/living/carbon/human/user)
	user.update_icon()
	update_icon()
	if(sliding_behavior && contents.len && (src in user))
		var/obj/item/I = contents[contents.len]
		if(istype(I))
			hide_from(usr)
			var/turf/T = get_turf(user)
			remove_from_storage(I, T)
			usr.put_in_hands(I)
			add_fingerprint(user)
	else
		..()

/obj/item/storage/pouch/MouseDrop(over_object)
	if(!(item_flags & DRAG_AND_DROP_UNEQUIP))
		update_icon()
		return ..()
	if(!pre_equip(usr, over_object))
		update_icon()
		..()

/obj/item/storage/pouch/verb/toggle_layer()
	set name = "Switch Belt Layer"
	set category = "Object"

	if(show_above_suit == -1)
		to_chat(usr, SPAN_NOTICE("\The [src] cannot be worn above your suit!"))
		return
	show_above_suit = !show_above_suit
	update_icon()

/obj/item/storage/pouch/update_icon()
	if (ismob(src.loc))
		var/mob/M = src.loc
		M.update_inv_belt()
		M.update_icon()

/obj/item/storage/pouch/small_generic
	name = "small generic pouch"
	desc = "Can hold anything in it, but only about once."
	icon_state = "small_generic"
	item_state = "small_generic"
	matter = list(MATERIAL_BIOMATTER = 9, MATERIAL_STEEL = 3)
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_SMALL_STORAGE * 0.5
	max_w_class = ITEM_SIZE_SMALL
	rarity_value = 10
	price_tag = 100

/obj/item/storage/pouch/medium_generic
	name = "medium generic pouch"
	desc = "Can hold anything in it, but only about twice."
	icon_state = "medium_generic"
	item_state = "medium_generic"
	matter = list(MATERIAL_BIOMATTER = 24, MATERIAL_STEEL = 6 )
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_SMALL_STORAGE
	max_w_class = ITEM_SIZE_NORMAL
	rarity_value = 20
	price_tag = 255

/obj/item/storage/pouch/large_generic
	name = "large generic pouch"
	desc = "A mini satchel. Can hold a fair bit, but it won't fit in your pocket"
	icon_state = "large_generic"
	item_state = "large_generic"
	matter = list(MATERIAL_BIOMATTER = 39, MATERIAL_STEEL = 9 )
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT | SLOT_DENYPOCKET
	storage_slots = null //Uses generic capacity
	max_storage_space = DEFAULT_NORMAL_STORAGE
	max_w_class = ITEM_SIZE_NORMAL
	rarity_value = 100
	price_tag = 410

/obj/item/storage/pouch/medical_supply
	name = "medical supply pouch"
	desc = "A small pouch for holding medical supplies."
	icon_state = "medical_supply"
	item_state = "medical_supply"
	matter = list(MATERIAL_BIOMATTER = 9, MATERIAL_STEEL = 1 )
	rarity_value = 33

	storage_slots = null
	max_storage_space = DEFAULT_SMALL_STORAGE //Medkits typically hold 5 items in them, this is pocket medkit
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/scanner/health,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/glass/bottle,
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/syringe,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves/latex,
		/obj/item/reagent_containers/hypospray,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/stack/nanopaste
		)

/obj/item/storage/pouch/engineering_tools
	name = "engineering tools pouch"
	desc = "A pouch for holding engineering tools. Looks like there are pockets in it for 4 tools."
	icon_state = "engineering_tool"
	item_state = "engineering_tool"
	matter = list(MATERIAL_BIOMATTER = 9, MATERIAL_STEEL = 1 )
	rarity_value = 20

	storage_slots = 4
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/tool,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/device/radio/headset,
		/obj/item/stack/cable_coil,
		/obj/item/device/t_scanner,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/engineering,
		/obj/item/device/robotanalyzer,
		/obj/item/tool/minihoe,
		/obj/item/tool/hatchet,
		/obj/item/device/scanner/plant,
		/obj/item/extinguisher/mini,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/flame/lighter,
		/obj/item/cell/small,
		/obj/item/cell/medium,
		/obj/item/gun/projectile/flare_gun,
		/obj/item/stack/nanopaste,
		/obj/item/device/geiger
		)

/obj/item/storage/pouch/engineering_supply
	name = "engineering supply pouch"
	desc = "A pouch for holding various engineering scanners, power cells and equipment."
	icon_state = "engineering_supply"
	item_state = "engineering_supply"
	matter = list(MATERIAL_BIOMATTER = 9, MATERIAL_STEEL = 1 )
	rarity_value = 33

	storage_slots = null
	max_storage_space = DEFAULT_NORMAL_STORAGE * 0.8 //Not as big as a large pouch, even though hyper-specialized
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/cell,
		/obj/item/electronics/circuitboard,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/stack/cable_coil,
		/obj/item/device/t_scanner,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/engineering,
		/obj/item/device/robotanalyzer,
		/obj/item/device/scanner/plant,
		/obj/item/stack/rods,
		/obj/item/extinguisher/mini,
		/obj/item/gun/projectile/flare_gun
		)

/obj/item/storage/pouch/engineering_material
	name = "engineering material pouch"
	desc = "A pouch for holding sheets, rods and cable coils."
	icon_state = "engineering_material"
	item_state = "engineering_material"
	matter = list(MATERIAL_BIOMATTER = 9, MATERIAL_STEEL = 1 )
	rarity_value = 33

	storage_slots = null
	max_storage_space = DEFAULT_NORMAL_STORAGE * 0.6 //Enough space for 3 stacks
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/stack/material,
		/obj/item/material,
		/obj/item/stack/cable_coil,
		/obj/item/stack/rods
		)

/obj/item/storage/pouch/ammo
	name = "ammo pouch"
	desc = "Can hold ammo magazines and bullets, not the boxes though."
	icon_state = "ammo"
	item_state = "ammo"
	matter = list(MATERIAL_BIOMATTER = 19, MATERIAL_STEEL = 1 )
	rarity_value = 33
	price_tag = 200

	storage_slots = 6
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/cell/small,
		/obj/item/cell/medium
		)

	cant_hold = list(
		/obj/item/ammo_magazine/ammobox,
		/obj/item/ammo_magazine/srifle/drum,
		/obj/item/ammo_magazine/lrifle/drum,
		/obj/item/ammo_magazine/lrifle/pk,
		/obj/item/ammo_magazine/maxim
		)

/obj/item/storage/pouch/tubular
	name = "tubular pouch"
	desc = "Can hold five cylindrical and small items, including but not limiting to flares, glowsticks, syringes and even hatton tubes or rockets."
	icon_state = "flare"
	item_state = "flare"
	matter = list(MATERIAL_BIOMATTER = 14, MATERIAL_STEEL = 1 )
	rarity_value = 14
	price_tag = 140

	storage_slots = 3
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/lighting/glowstick,
		/obj/item/reagent_containers/syringe,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/hypospray,
		/obj/item/pen,
		/obj/item/storage/pill_bottle,
		/obj/item/hatton_magazine,
		/obj/item/ammo_casing/rocket,
		/obj/item/ammo_casing/grenade,
		/obj/item/cell/small,
		/obj/item/cell/medium
		)

/obj/item/storage/pouch/tubular/vial
	name = "vial pouch"
	desc = "Can hold about ten vials. Rebranding!"

	storage_slots = 10

	can_hold = list(
		/obj/item/device/lighting/glowstick,
		/obj/item/reagent_containers/syringe,
		/obj/item/reagent_containers/glass/beaker/vial,
		/obj/item/reagent_containers/hypospray,
		/obj/item/pen,
		/obj/item/cell/small,
		/obj/item/storage/pill_bottle
		)

/obj/item/storage/pouch/tubular/update_icon()
	..()
	cut_overlays()
	if(contents.len)
		overlays += image('icons/inventory/pockets/icon.dmi', "flare_[contents.len]")

/obj/item/storage/pouch/holding
	name = "pouch of holding"
	desc = "If your pockets are not large enough to store all your belongings, you may want to use this high-tech pouch that opens into a localized pocket of bluespace (pun intended)."
	icon_state = "holdingpouch"
	item_state = "holdingpouch"
	storage_slots = 7
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE
	matter = list(MATERIAL_STEEL = 4, MATERIAL_GOLD = 5, MATERIAL_DIAMOND = 2, MATERIAL_URANIUM = 2)
	origin_tech = list(TECH_BLUESPACE = 4)
	spawn_blacklisted = TRUE

/obj/item/storage/pouch/holding/New()
	..()
	bluespace_entropy(3, get_turf(src))

/obj/item/storage/pouch/gun_part
	name = "part pouch"
	desc = "A pouch for holding all sorts of small parts, upgrades and components."
	icon_state = "part_pouch"
	item_state = "part_pouch"
	rarity_value = 33

	storage_slots = null
	max_storage_space = DEFAULT_NORMAL_STORAGE * 0.8 //Actually smaller than previous but illusion of space with continuous holding space
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/part,
		/obj/item/stock_parts,
		/obj/item/electronics,
		/obj/item/tool_upgrade //Now holds tool upgrades!
		)

/obj/item/storage/pouch/ammo/loaded
	name = "ammo pouch"
	desc = "Pre-loaded ammo pouch. This one has caseless magazines."
	spawn_blacklisted = TRUE
	prespawned_content_amount = 6
	prespawned_content_type = /obj/item/ammo_magazine/ihclrifle/hv
	sliding_behavior = TRUE

/obj/item/storage/firstaid/combat/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)

/obj/item/storage/pouch/ammo/loaded/lrifle
	desc = "Pre-loaded ammo pouch. This one has rifle magazines."
	prespawned_content_type = /obj/item/ammo_magazine/lrifle/highvelocity

/obj/item/storage/pouch/ammo/loaded/srifle
	desc = "Pre-loaded ammo pouch. This one has carbine magazines."
	prespawned_content_type = /obj/item/ammo_magazine/srifle/hv

/obj/item/storage/pouch/ammo/loaded/smg
	desc = "Pre-loaded ammo pouch. This one has smg magazines."
	prespawned_content_type = /obj/item/ammo_magazine/smg

/obj/item/storage/pouch/ammo/loaded/smg/hv
	desc = "Pre-loaded ammo pouch. This one has smg magazines."
	prespawned_content_type = /obj/item/ammo_magazine/smg/hv

/obj/item/storage/pouch/ammo/loaded/srifle/long
	desc = "Pre-loaded ammo pouch. This one has carbine magazines."
	prespawned_content_type = /obj/item/ammo_magazine/srifle/long/hv

/obj/item/storage/pouch/ammo/loaded/clrifle
	desc = "Pre-loaded ammo pouch. This one has caseless magazines."
	prespawned_content_type = /obj/item/ammo_magazine/ihclrifle/hv


/obj/item/storage/pouch/tubular/loaded
	name = "tubular pouch"
	desc = "Pre-loaded packet of grenade launcher shells. This one has stinger shells."
	spawn_blacklisted = TRUE
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/grenade
	sliding_behavior = TRUE

/obj/item/storage/pouch/tubular/loaded/blast
	desc = "Pre-loaded packet of grenade launcher shells. This one has blast shells."
	prespawned_content_type = /obj/item/ammo_casing/grenade/blast

/obj/item/storage/pouch/tubular/loaded/frag
	desc = "Pre-loaded packet of grenade launcher shells. This one has frag shells."
	prespawned_content_type = /obj/item/ammo_casing/grenade/frag

/obj/item/storage/pouch/tubular/loaded/smoke
	desc = "Pre-loaded packet of grenade launcher shells. This one has smoke shells."
	prespawned_content_type = /obj/item/ammo_casing/grenade/smoke

/obj/item/storage/pouch/tubular/loaded/low_yield
	desc = "Pre-loaded packet of grenade launcher shells. This one has EMP shells."
	prespawned_content_type = /obj/item/ammo_casing/grenade/emp/low_yield

/obj/item/storage/pouch/medical_supply/ifak
	name = "IFAK"
	desc = "Individual First Aid Kit. REMEMBER: this is YOURS, for when YOU get hit."
	prespawned_content_amount = 2
	prespawned_content_type = /obj/item/stack/medical/gauze/hemo

/obj/item/storage/pouch/medical_supply/ifak/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealbrute(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealburn(src)

//Bandoliers, make better pls

/obj/item/storage/pouch/bandolier
	name = "tubular pouch"
	desc = "A bandolier for holding ammunition. User must pick which type."
	icon_state = "shotgun"
	item_state = "bandolier_empty"
	matter = list(MATERIAL_BIOMATTER = 14, MATERIAL_STEEL = 1 )
	rarity_value = 50
	price_tag = 140
	sliding_behavior = TRUE
	storage_slots = 0
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT | SLOT_DENYPOCKET

/obj/item/storage/pouch/bandolier/update_icon()
	..()
	cut_overlays()

	if((contents.len) == 0)
		icon_state = "bandolier_empty"
		update_wear_icon()
	if(contents.len)
		overlays += image('icons/inventory/pockets/icon.dmi', "[icon_state]_[contents.len]")
		icon_state = "[initial(icon_state)]"
		update_wear_icon()

/obj/item/storage/pouch/bandolier/attack_self(mob/living/user)
	var/list/options = list()
	options["Shotgun Shells"] = list(/obj/item/storage/pouch/bandolier/shotgun)
	options["Grenades"] = list(/obj/item/storage/pouch/bandolier/grenade)
	options["Launcher Shells"] = list(/obj/item/storage/pouch/bandolier/fourty)
	var/choice = input(user,"What will this bandolier hold?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/storage/pouch/))
				to_chat(user, SPAN_NOTICE("You have chosen \the [AM]. Say hello to your new friend."))
		qdel(src)


/obj/item/storage/pouch/bandolier/shotgun
	name = "shotgun bandolier"
	desc = "A bandolier configured to hold shotgun shells."
	icon_state = "shotgun"
	item_state = "shotgun"
	storage_slots = 5
	can_hold = list(
		/obj/item/ammo_casing/shotgun
		)

/obj/item/storage/pouch/bandolier/fourty
	name = "grenade launcher bandolier"
	desc = "A bandolier configured to hold grenade launcher shells."
	icon_state = "forty"
	item_state = "forty"
	storage_slots = 5
	can_hold = list(
		/obj/item/ammo_casing/grenade
		)

/obj/item/storage/pouch/bandolier/grenade
	name = "grenade bandolier"
	desc = "A bandolier configured to hold hand grenades."
	icon_state = "hg"
	item_state = "hg"
	storage_slots = 5
	can_hold = list(
		/obj/item/grenade
		)
//Preloaded
//For antag and ERT, etc
/obj/item/storage/pouch/bandolier/shotgun/slug
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/shotgun/prespawned

/obj/item/storage/pouch/bandolier/shotgun/buckshot
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/shotgun/pellet/prespawned

/obj/item/storage/pouch/bandolier/shotgun/bean
	name = "beanbag bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/shotgun/beanbag/prespawned

/obj/item/storage/pouch/bandolier/fourty/blast
	name = "blast shell bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/grenade/blast

/obj/item/storage/pouch/bandolier/fourty/flash
	name = "flash shell bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/grenade/flash

/obj/item/storage/pouch/bandolier/fourty/emp
	name = "EMP shell bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/ammo_casing/grenade/emp/low_yield


/obj/item/storage/pouch/bandolier/grenade/frag
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/frag

/obj/item/storage/pouch/bandolier/grenade/blast
	name = "grenade bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/explosive

/obj/item/storage/pouch/bandolier/grenade/smoke
	name = "smoke grenade bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/smokebomb

/obj/item/storage/pouch/bandolier/grenade/flashbang
	name = "flash grenade bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/flashbang

/obj/item/storage/pouch/bandolier/grenade/emp
	name = "EMP grenade bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/empgrenade

/obj/item/storage/pouch/bandolier/grenade/teargas
	name = "tear-gas grenade bandolier"
	prespawned_content_amount = 5
	prespawned_content_type = /obj/item/grenade/chem_grenade/teargas

/*
/obj/item/clothing/head/space/void/excelsior
	name = "Trooper helmet"
	desc = "A deceptively well armored breath mask assembly."
	icon_state = "trooper"
	item_state = "trooper"

	//The excelsior armors cost small amounts of rare materials that they can teleport in.
	//This means they can either build up materials over time, or make it go faster by scavenging rare mats
	matter = list(
		MATERIAL_PLASTIC = 20,
		MATERIAL_GLASS = 10,
		MATERIAL_PLASTEEL = 3
	)

	armor = list(
		melee = 10,
		bullet = 10,
		energy = 14,
		bomb = 75,
		bio = 100,
		rad = 30
	)
	siemens_coefficient = 0
	species_restricted = list(SPECIES_HUMAN)
	//camera_networks = list(NETWORK_EXCELSIOR) //Todo future: Excelsior camera network and monitoring console
	light_overlay = "helmet_light_green"
	var/obj/item/clothing/glasses/hud/excelsior/hud
	price_tag = 500

/obj/item/clothing/head/space/void/excelsior/New()
	..()
	hud = new(src)
	hud.canremove = FALSE

/obj/item/clothing/head/space/void/excelsior/equipped()
	..()
	toggle_hud()

/obj/item/clothing/head/space/void/excelsior/verb/toggle_hud()
	set name = "Toggle Hud"
	set desc = "Shows you who's a communist and who will soon become a communist."
	set category = "Object"
	var/mob/living/carbon/human/user = loc
	if(!istype(user) || usr.stat || user.restrained())
		return
	if(user.get_equipped_item(slot_head) != src)
		return
	if(hud in src)
		if(user.glasses)
			to_chat(user, SPAN_WARNING("You fail to enable the hud due to something being in the way."))
		else
			user.equip_to_slot(hud, slot_glasses)
			to_chat(user, "You enable the hud.")
	else
		if(ismob(hud.loc))
			var/mob/hud_loc = hud.loc
			hud_loc.drop_from_inventory(hud, src)
			to_chat(user, "You disable the hud.")
		hud.forceMove(src)

/obj/item/clothing/head/space/void/excelsior/dropped(usr)
	..()
	if(hud.loc != src)
		if(ismob(hud.loc))
			var/mob/hud_loc = hud.loc
			hud_loc.drop_from_inventory(hud, src)
		hud.forceMove(src)
*/


/obj/item/clothing/mask/gas/excelsior //Trust me, okay?
	name = "Trooper helmet"
	desc = "A deceptively well armored gas mask assembly."
	icon_state = "trooper"
	item_state = "trooper"
	//The excelsior armors cost small amounts of rare materials that they can teleport in.
	//This means they can either build up materials over time, or make it go faster by scavenging rare mats
	matter = list(
		MATERIAL_PLASTIC = 20,
		MATERIAL_GLASS = 10,
		MATERIAL_PLASTEEL = 3
	)

	armor = list(
		melee = 10,
		bullet = 10,
		energy = 14,
		bomb = 75,
		bio = 100,
		rad = 30
	)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES|EARS
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0
	w_class = ITEM_SIZE_NORMAL
	species_restricted = list("exclude")
	flash_protection = FLASH_PROTECTION_MAJOR // kept because seeing the sun in space without flash prot is... ouch.
	price_tag = 500
	spawn_blacklisted = TRUE
	style = STYLE_NEG_HIGH
	style_coverage = COVERS_WHOLE_HEAD
	spawn_blacklisted = FALSE

	action_button_name = "Toggle Helmet Light"
	light_overlay = "orion_light"
	brightness_on = 4
	on = FALSE
	light_overlay = "helmet_light_green"
	var/obj/item/clothing/glasses/hud/excelsior/hud
	price_tag = 500

/obj/item/clothing/mask/gas/excelsior/New()
	..()
	hud = new(src)
	hud.canremove = FALSE

/obj/item/clothing/mask/gas/excelsior/equipped()
	..()
	toggle_hud()

/obj/item/clothing/mask/gas/excelsior/verb/toggle_hud()
	set name = "Toggle Hud"
	set desc = "Shows you who's a communist and who will soon become a communist."
	set category = "Object"
	var/mob/living/carbon/human/user = loc
	if(!istype(user) || usr.stat || user.restrained())
		return
	if(user.get_equipped_item(slot_head) != src)
		return
	if(hud in src)
		if(user.glasses)
			to_chat(user, SPAN_WARNING("You fail to enable the hud due to something being in the way."))
		else
			user.equip_to_slot(hud, slot_glasses)
			to_chat(user, "You enable the hud.")
	else
		if(ismob(hud.loc))
			var/mob/hud_loc = hud.loc
			hud_loc.drop_from_inventory(hud, src)
			to_chat(user, "You disable the hud.")
		hud.forceMove(src)

/obj/item/clothing/mask/gas/excelsior/dropped(usr)
	..()
	if(hud.loc != src)
		if(ismob(hud.loc))
			var/mob/hud_loc = hud.loc
			hud_loc.drop_from_inventory(hud, src)
		hud.forceMove(src)

/obj/item/clothing/suit/space/void/excelsior
	name = "Trooper carapace"
	desc = "Surprisingly space-proof arc-flash suit wrapped in armor and equipment. Comically evil."
	icon_state = "trooper"
	item_state = "trooper"
	slowdown = 0.2
	w_class = ITEM_SIZE_NORMAL
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 14,
		bomb = 75,
		bio = 100,
		rad = 30
	)
	siemens_coefficient = 0 //Shockproof!
	breach_threshold = 6
	resilience = 0.08
	matter = list(
		MATERIAL_PLASTIC = 30,
		MATERIAL_STEEL = 10,
		MATERIAL_PLASTEEL = 5
	)
	helmet = /obj/item/clothing/mask/gas/excelsior
	spawn_blacklisted = FALSE
	slowdown = MEDIUM_SLOWDOWN

/obj/item/clothing/mask/gas/excelsior/raider
	name = "Raider helmet"
	desc = "Inhuman, unthinking, unfeeling abomination."
	icon_state = "raider"
	item_state = "raider"

	//The excelsior armors cost small amounts of rare materials that they can teleport in.
	//This means they can either build up materials over time, or make it go faster by scavenging rare mats
	matter = list(
		MATERIAL_PLASTIC = 30,
		MATERIAL_GLASS = 5,
		MATERIAL_PLASTEEL = 5
	)

	armor = list(
		melee = 20,
		bullet = 10,
		energy = 18,
		bomb = 75,
		bio = 100,
		rad = 75
	)
	price_tag = 300

/obj/item/clothing/suit/space/void/excelsior/raider
	name = "Raider heavy carapace"
	desc = "Superheavy armor used by Marx-Kampf Raiders."
	icon_state = "raider"
	item_state = "raider"
	w_class = ITEM_SIZE_NORMAL
	armor = list(
		melee = 20,
		bullet = 10,
		energy = 18,
		bomb = 75,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0 //Shockproof!
	breach_threshold = 6
	resilience = 0.08
	matter = list(
		MATERIAL_PLASTIC = 30,
		MATERIAL_STEEL = 10,
		MATERIAL_PLASTEEL = 5
	)
	helmet = /obj/item/clothing/mask/gas/excelsior/raider
	spawn_blacklisted = TRUE
	slowdown = MEDIUM_SLOWDOWN
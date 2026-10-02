/obj/item/tool/shovel/spatula
	name = "spatula"
	desc = "A Hydrodynamic Spatula. Port and Starboard attachments not included."
	icon = 'icons/obj/cwj_cooking/kitchen.dmi'
	icon_state = "spatula"
	item_state = "spatula"
	force = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("smacked", "slapped", "spanked", "whapped", "whacked")
	hitsound = 'sound/weapons/punch3.ogg'
	tool_qualities = list(QUALITY_SHOVELING = 5, QUALITY_DIGGING = 5, QUALITY_HAMMERING = 1)
	dropped_sound = 'sound/items/drop_sounds/knife.ogg'

/obj/item/tool/shovel/spatula/advanced
	name = "spatula"
	desc = "A Hydrodynamic Spatula. Port and Starboard attachments ARE included."
	icon_state = "hydrodynamic"
	force = WEAPON_FORCE_PAINFUL
	tool_qualities = list(QUALITY_SHOVELING = 10, QUALITY_DIGGING = 10, QUALITY_HAMMERING = 5)

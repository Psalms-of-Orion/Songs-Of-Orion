/obj/item/tool/cautery
	name = "cautery"
	desc = "This stops bleeding."
	icon_state = "cautery"
	item_state = "cautery"
	matter = list(MATERIAL_STEEL = 5, MATERIAL_GLASS = 2)
	flags = CONDUCT
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("burnt")
	tool_qualities = list(QUALITY_CAUTERIZING = 30)
	spawn_tags = SPAWN_TAG_SURGERY_TOOL
	dropped_sound = 'sound/items/drop_sounds/card.ogg'
	pickup_sound = 'sound/items/drop_sounds/accessory.ogg'

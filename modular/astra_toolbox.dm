/obj/item/storage/hcases/tool
	name = "toolbox"
	desc = "A hardcase with engineering markings that can hold a variety of different tools and materials. Alt+click to open and close."
	icon_state = "hcase_engi"
	spawn_blacklisted = FALSE
	icon = 'modular/icons/astra_tools.dmi'
	icon_state = "hcase_red"
	item_state = "toolbox_red"
	flags = CONDUCT
	force = WEAPON_FORCE_PAINFUL
	structure_damage_factor = STRUCTURE_DAMAGE_BLUNT
	throwforce = WEAPON_FORCE_NORMAL
	throw_speed = 1
	throw_range = 6
	w_class = ITEM_SIZE_BULKY
	matter = list(MATERIAL_STEEL = 6)
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = 14 //enough to hold all starting contents
	origin_tech = list(TECH_COMBAT = 1)
	attack_verb = list("robusted")
	spawn_blacklisted = FALSE
	rarity_value = 10
	spawn_frequency = 10
	spawn_tags = SPAWN_TAG_TOOLBOX
	bad_type = /obj/item/storage/hcases/tool
	dropped_sound = 'sound/items/drop_sounds/metalweapon.ogg'
	pickup_sound = 'sound/items/drop_sounds/accessory.ogg'

	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/cell,
		/obj/item/electronics/circuitboard,
		/obj/item/stack/material,
		/obj/item/material,
		/obj/item/tool,
		/obj/item/device/lighting/toggleable/flashlight,
		/obj/item/device/radio/headset,
		/obj/item/stack/cable_coil,
		/obj/item/taperoll/engineering,
		/obj/item/device,
		/obj/item/extinguisher/mini,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/flame/lighter
		)

/obj/item/storage/hcases/tool/emergency
	name = "emergency toolbox"
	icon_state = "hcase_red"
	item_state = "toolbox_red"
	rarity_value = 30

/obj/item/storage/hcases/tool/emergency/populate_contents()
	new /obj/item/tool/crowbar(src)
	new /obj/item/extinguisher/mini(src)
	if(prob(40))
		new /obj/item/device/lighting/toggleable/flashlight(src)
	else if(prob(30))
		new /obj/item/gun/projectile/flare_gun(src)
		new /obj/item/ammo_casing/flare(src)
	else
		new /obj/item/device/lighting/glowstick/flare(src)
	if (prob(40))
		new /obj/item/tool/tape_roll(src)
	new /obj/item/device/radio(src)

/obj/item/storage/hcases/tool/mechanical
	name = "mechanical toolbox"
	icon_state = "hcase_blue"
	item_state = "toolbox_blue"

/obj/item/storage/hcases/tool/mechanical/populate_contents()
	new /obj/item/tool/screwdriver(src)
	new /obj/item/tool/wrench(src)
	new /obj/item/tool/weldingtool(src)
	new /obj/item/tool/crowbar(src)
	if(prob(50))
		new /obj/item/tool/wirecutters(src)
	else
		new /obj/item/tool/wirecutters/pliers(src)
	new /obj/item/device/scanner/gas(src)

/obj/item/storage/hcases/tool/electrical
	name = "electrical toolbox"
	icon_state = "hcase_yellow"
	item_state = "toolbox_yellow"
	rarity_value = 20

/obj/item/storage/hcases/tool/electrical/populate_contents()
	var/color = pick("red","yellow","green","blue","pink","orange","cyan","white")

	new /obj/item/tool/screwdriver(src)
	if(prob(50))
		new /obj/item/tool/wirecutters(src)
	else
		new /obj/item/tool/wirecutters/pliers(src)
	new /obj/item/device/t_scanner(src)
	new /obj/item/tool/crowbar(src)
	new /obj/item/stack/cable_coil(src,30,color)
	new /obj/item/stack/cable_coil(src,30,color)

	if(prob(5))
		new /obj/item/clothing/gloves/insulated(src)
	else if(prob(10))
		new /obj/item/tool/multitool(src)
	else
		new /obj/item/stack/cable_coil(src,30,color)

	if(prob(60))
		new /obj/item/tool/tape_roll(src)

/obj/item/storage/hcases/tool/syndicate
	name = "suspicious looking toolbox"
	icon_state = "hcase_green"
	item_state = "toolbox_syndi"
	origin_tech = list(TECH_COMBAT = 1, TECH_COVERT = 1)
	force = WEAPON_FORCE_DANGEROUS
	spawn_blacklisted = TRUE

/obj/item/storage/hcases/tool/syndicate/populate_contents()
	var/obj/item/tool/cell_tool

	new /obj/item/clothing/gloves/insulated(src)

	cell_tool = new /obj/item/tool/screwdriver/combi_driver(src)
	qdel(cell_tool.cell)
	cell_tool.cell = new /obj/item/cell/small/super(cell_tool)

	cell_tool = new /obj/item/tool/crowbar/pneumatic(src)
	qdel(cell_tool.cell)
	cell_tool.cell = new /obj/item/cell/medium/super(cell_tool)

	new /obj/item/tool/weldingtool/advanced(src)
	new /obj/item/tool/wirecutters/armature(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/cell/medium/super(src)
	new /obj/item/cell/small/super(src)


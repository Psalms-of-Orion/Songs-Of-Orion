/obj/item/cell/large/astra
	name = "large powercell"
	desc = "A large advanced energy storage cell."
	icon_state = "al_st"
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 3, MATERIAL_SILVER = 3)
	price_tag = 200
	spawn_tags = SPAWN_TAG_POWERCELL_LARGE
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 5000
	max_chargerate = 0.1

/obj/item/cell/large/astra/high
	name = "large powercell"
	desc = "A large powercell with higher capacity."
	icon_state = "al_sup"
	origin_tech = list(TECH_POWER = 4)
	maxcharge = 12000

/obj/item/cell/large/astra/super
	name = "large advanced powercell"
	desc = "A large supercapacity powercell using experimental technology."
	icon_state = "al_sup"
	origin_tech = list(TECH_POWER = 5)
	maxcharge = 20000
	max_chargerate = 0.2

/obj/item/cell/medium/astra
	name = "medium powercell"
	desc = "A common rechargeable M-standardized power cell. Popular and reliable version."
	icon_state = "am_st"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 800
	max_chargerate = 0.1

/obj/item/cell/medium/astra/high
	name = "medium powercell"
	desc = "A high capacity M-Class power cell, expensive."
	icon_state = "am_sup"
	origin_tech = list(TECH_POWER = 4)
	maxcharge = 1000
	spawn_tags = SPAWN_TAG_POWERCELL_MEDIUM_IH_AMMO

/obj/item/cell/medium/astra/super
	name = "medium advanced powercell"
	desc = "An advanced prototype M-Class super-capacity power cell."
	icon_state = "am_sup"
	origin_tech = list(TECH_POWER = 6)
	maxcharge = 1300
	max_chargerate = 0.2

/obj/item/cell/small/astra
	name = "small powercell"
	desc = "A common rechargeable S-standardized power cell. Popular and reliable version."
	icon_state = "as_st"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 150
	max_chargerate = 0.1

/obj/item/cell/small/astra/high
	name = "small powercell"
	desc = "A high capacity S-Class power cell, expensive."
	icon_state = "as_sup"
	origin_tech = list(TECH_POWER = 4)
	maxcharge = 300

/obj/item/cell/small/astra/super
	name = "small advanced powercell"
	desc = "An advanced prototype S-Class super-capacity power cell."
	icon_state = "as_sup"
	origin_tech = list(TECH_POWER = 6)
	maxcharge = 400
	max_chargerate = 0.2

//Disposables

/obj/item/cell/large/astra/disposable
	name = "large battery"
	desc = "A large single-use battery compatible with the L-Class power standard."
	icon_state = "l_d"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 12000
	max_chargerate = 0
	spawn_charged = 1
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 3, MATERIAL_SILVER = 1)

/obj/item/cell/large/astra/disposable/high
	name = "large power-pack"
	desc = "An expensive, advanced single-use battery compatible with the L-Class power standard."
	icon_state = "l_dsup"
	origin_tech = list(TECH_POWER = 4)
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 3, MATERIAL_SILVER = 3)
	maxcharge = 18000

/obj/item/cell/medium/astra/disposable
	name = "medium battery"
	desc = "A common rechargeable M-standardized power cell. Popular and reliable version."
	icon_state = "m_d"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 1000
	max_chargerate = 0
	spawn_charged = 1
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 1)

/obj/item/cell/medium/astra/disposable/high
	name = "medium power-pack"
	desc = "An extreme duty single use power-pack used in the most critical applications. Compatible with the M-Class power standard."
	icon_state = "m_dsup"
	origin_tech = list(TECH_POWER = 6)
	maxcharge = 1500
	max_chargerate = 0
	spawn_charged = 1
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 2)

/obj/item/cell/small/astra/disposable
	name = "small battery"
	desc = "A small disposable S-Class battery."
	icon_state = "s_d"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 100
	max_chargerate = 0
	spawn_charged = 1
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1)

/obj/item/cell/small/astra/disposable/high
	name = "small battery"
	desc = "A premium small disposable S-Class battery with improved capacity."
	icon_state = "s_dhi"
	origin_tech = list(TECH_POWER = 2)
	maxcharge = 350
	max_chargerate = 0
	spawn_charged = 1
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1)


/obj/item/cell/small/astra/disposable/super
	name = "small power-pack"
	desc = "An expensive single-use power-pack for critical applications, compatible with the S-Class power standard."
	icon_state = "s_dsup"
	origin_tech = list(TECH_POWER = 3)
	maxcharge = 550
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1, MATERIAL_SILVER = 1)

//Nuclear
/obj/item/cell/small/astra/nuclear
	name = "small atomic powercell"
	desc = "An ultra-miniaturized radioisotope generator packed into an S-Class power cell, capable of self-recharging over time."
	icon_state = "s_nuke"
	autorecharging = TRUE
	origin_tech = list(TECH_POWER = 6)
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1, MATERIAL_SILVER = 1, MATERIAL_URANIUM = 2)
	maxcharge = 300

/obj/item/cell/medium/astra/nuclear
	name = "medium atomic powercell"
	desc = "An ultra-miniaturized radioisotope generator packed into an M-Class power cell, capable of self-recharging over time."
	icon_state = "m_nuke"
	autorecharging = TRUE
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 2, MATERIAL_URANIUM = 4)
	origin_tech = list(TECH_POWER = 6)
	maxcharge = 1000

/obj/item/cell/large/astra/nuclear
	name = "large atomic powercell"
	desc = "An ultra-miniaturized radioisotope generator packed into an L-Class power cell, capable of self-recharging over time."
	icon_state = "l_nuke"
	autorecharging = TRUE
	origin_tech = list(TECH_POWER = 6)
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 3, MATERIAL_SILVER = 3, MATERIAL_URANIUM = 6)
	maxcharge = 13000
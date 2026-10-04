/datum/design/research/item/powercell
	build_type = AUTOLATHE | PROTOLATHE | MECHFAB
	category = CAT_POWER

/datum/design/research/item/powercell/AssembleDesignDesc()
	if(build_path)
		var/obj/item/cell/C = build_path
		desc = "Allows the construction of [initial(C.autorecharging) ? "microreactor" : "power"] cells that can hold [initial(C.maxcharge)] units of energy."

/datum/design/research/item/powercell/large/basic
	name = "large reusable battery 1k"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large
	sort_string = "DAAAA"

/datum/design/research/item/powercell/large/high
	name = "large powercell 5k"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large/astra
	sort_string = "DAAAB"

/datum/design/research/item/powercell/large/super
	name = "large powercell 12k"
	build_path = /obj/item/cell/large/astra/high
	sort_string = "DAAAC"

/datum/design/research/item/powercell/large/hyper
	name = "large advanced powercell 20k"
	build_path = /obj/item/cell/large/astra/super
	sort_string = "DAAAD"

/datum/design/research/item/powercell/medium/basic
	name = "medium reusable battery 600"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium
	sort_string = "DAAAF"

/datum/design/research/item/powercell/medium/high
	name = "medium powercell 800"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium/astra
	sort_string = "DAAAI"

/datum/design/research/item/powercell/medium/super
	name = "medium powercell 1k"
	build_path = /obj/item/cell/medium/astra/high
	sort_string = "DAAAO"

/datum/design/research/item/powercell/medium/hyper
	name = "medium advanced powercell 1300"
	build_path = /obj/item/cell/medium/astra/super
	sort_string = "DAAAP"

/datum/design/research/item/powercell/small/basic
	name = "small reusable battery 100"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small
	sort_string = "DAAAQ"

/datum/design/research/item/powercell/small/high
	name = "small powercell 150"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small/astra
	sort_string = "DAAAV"

/datum/design/research/item/powercell/small/super
	name = "small powercell 300"
	build_path = /obj/item/cell/small/astra/high
	sort_string = "DAAAW"

/datum/design/research/item/powercell/small/hyper
	name = "small advanced powercell 400"
	build_path = /obj/item/cell/small/astra/super
	sort_string = "DAAAX"

/datum/design/research/item/powercell/large/nuclear
	name = "large atomic powercell 13k"
	build_path = /obj/item/cell/large/astra/nuclear
	sort_string = "DAAAZ"

/datum/design/research/item/powercell/medium/nuclear
	name = "medium atomic powercell 1k"
	build_path = /obj/item/cell/medium/astra/nuclear
	sort_string = "DAABA"

/datum/design/research/item/powercell/small/nuclear
	name = "small atomic powercell 300"
	build_path = /obj/item/cell/small/astra/nuclear
	sort_string = "DAABB"

//Moved here for the sake of clarity, as old airlocks are still around and functional.


/obj/machinery/door/airlock/orion
	name = "Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock.dmi'
	assembly_type = /obj/structure/door_assembly
	resistance = RESISTANCE_ARMOURED
	opacity = 0

/obj/machinery/door/airlock/orion/sec
	name = "Security Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_blue.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_sec

/obj/machinery/door/airlock/orion/eng
	name = "Engineering Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_yellow.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_eng

/obj/machinery/door/airlock/orion/exp
	name = "Expedition Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_magenta.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_min

/obj/machinery/door/airlock/orion/hr
	name = "HR Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_cyan.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_research

/obj/machinery/door/airlock/orion/med
	name = "Clinic Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_white.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_med

/obj/machinery/door/airlock/orion/com
	name = "Command Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_wood.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_com

/obj/machinery/door/airlock/orion/centcom
	name = "CENTCOM Airlock"
	icon = 'icons/obj/doors/orion_doors/astra_airlock_green.dmi'
	assembly_type = /obj/structure/door_assembly/door_assembly_centcom

/obj/structure/door_assembly/door_assembly_centcom
	base_icon_state = "green"
	base_name = "CENTCOM Airlock"
	airlock_type = "/centcom"

/////////
//Multi-tile
////////

/obj/machinery/door/airlock/multi_tile/orion
	name = "Large Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra.dmi'
	opacity = FALSE
	glass = TRUE
	assembly_type = /obj/structure/door_assembly/multi_tile
	resistance = RESISTANCE_ARMOURED

/obj/structure/door_assembly/multi_tile/orion
	icon = 'icons/obj/doors/door_assembly2x1_astra.dmi'
	dir = EAST
	base_icon_state = "g"
	airlock_type = "/multi_tile/orion/glass"
	glass = -1 //To prevent bugs in deconstruction process.


/obj/machinery/door/airlock/multi_tile/orion/sec
	name = "Large Security Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_blue.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/sec

/obj/structure/door_assembly/multi_tile/orion/sec
	base_icon_state = "b"
	airlock_type = "/multi_tile/orion/sec"

/obj/machinery/door/airlock/multi_tile/orion/eng
	name = "Large Engineering Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_yellow.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/eng

/obj/structure/door_assembly/multi_tile/orion/eng
	base_icon_state = "y"
	airlock_type = "/multi_tile/orion/eng"

/obj/machinery/door/airlock/multi_tile/orion/exp
	name = "Large Expedition Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_magenta.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/exp

/obj/structure/door_assembly/multi_tile/orion/exp
	base_icon_state = "m"
	airlock_type = "/multi_tile/orion/exp"

/obj/machinery/door/airlock/multi_tile/orion/hr
	name = "Large HR Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_cyan.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/hr

/obj/structure/door_assembly/multi_tile/orion/hr
	base_icon_state = "c"
	airlock_type = "/multi_tile/orion/hr"

/obj/machinery/door/airlock/multi_tile/orion/med
	name = "Large Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_white.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/med

/obj/structure/door_assembly/multi_tile/orion/med
	base_icon_state = "wh"
	airlock_type = "/multi_tile/orion/med"

/obj/machinery/door/airlock/multi_tile/orion/com
	name = "Large Command Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_wood.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/com

/obj/structure/door_assembly/multi_tile/orion/com
	base_icon_state = "w"
	airlock_type = "/multi_tile/orion/com"

/obj/machinery/door/airlock/multi_tile/orion/centcom
	name = "Large CENTCOM Airlock"
	icon = 'icons/obj/doors/orion_doors/door2x1_astra_green.dmi'
	assembly_type = /obj/structure/door_assembly/multi_tile/orion/centcom

/obj/structure/door_assembly/multi_tile/orion/centcom
	base_icon_state = "gr"
	airlock_type = "/multi_tile/orion/centcom"

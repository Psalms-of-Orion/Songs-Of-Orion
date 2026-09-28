/decl/flooring/reinforced/orion
	name = "biological shield"
	desc = "Heavy radiation shielding tiles."
	icon = 'modular/turfs/floors/icons/tiles_reactor.dmi'
	icon_base = "reactor"
	flags = TURF_HAS_CORNERS | TURF_HAS_INNER_CORNERS | TURF_REMOVE_WRENCH | TURF_ACID_IMMUNE | TURF_CAN_BURN | TURF_CAN_BREAK | TURF_HIDES_THINGS |TURF_HIDES_THINGS
	build_type = /obj/item/stack/rods
	build_cost = 2
	build_time = 30
	apply_thermal_conductivity = 0.025
	apply_heat_capacity = 325000
	can_paint = 1
	resistance = RESISTANCE_TOUGH
	footstep_sound = "plating"

/turf/floor/reinforced/orion/reactor
	name = "biological shield"
	desc = "Heavy radiation shielding tiles."
	icon = 'modular/turfs/floors/icons/tiles_reactor.dmi'
	icon_state = "reactor"
	oxygen = 0
	nitrogen = 0
	initial_flooring = /decl/flooring/reinforced/orion


/turf/floor/reinforced/orion/bioshield
	name = "biological shield"
	desc = "Heavy radiation shielding tiles."
	icon = 'modular/turfs/floors/icons/tiles_reactor.dmi'
	icon_state = "reactor"
	temperature = 293
	initial_flooring = /decl/flooring/reinforced/orion

/decl/flooring/orion/venting
	name = "venting"
	icon_base = "venting"
	icon = 'modular/turfs/floors/icons/tech.dmi'
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

/turf/floor/reinforced/orion/venting
	icon_state = "venting"
	initial_flooring = /decl/flooring/orion/venting

/decl/flooring/tiling/orion
	name = "decking"
	icon_base = "tile"
	icon = 'modular/turfs/floors/icons/tiles.dmi'
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

/turf/floor/tiled/orion
	name = "decking"
	icon = 'modular/turfs/floors/icons/tiles.dmi'
	icon_state = "tile"
	initial_flooring = /decl/flooring/tiling/orion

//STANDARD
/decl/flooring/tiling/orion/tile2
	name = "decking"
	icon_base = "tile2"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/ribbed, /decl/flooring/tiling/orion/panel, /decl/flooring/tiling/orion/fan, /decl/flooring/tiling/orion/hazard)

/turf/floor/tiled/orion/tile2
	name = "decking"
	icon_state = "tile2"
	initial_flooring = /decl/flooring/tiling/orion/tile2

//STANDARD RIBBED
/decl/flooring/tiling/orion/ribbed
	name = "decking"
	icon_base = "ribbed"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/tile2, /decl/flooring/tiling/orion/panel, /decl/flooring/tiling/orion/fan, /decl/flooring/tiling/orion/hazard)

/turf/floor/tiled/orion/ribbed
	name = "decking"
	icon_state = "ribbed"
	initial_flooring = /decl/flooring/tiling/orion/ribbed

//STANDARD PANELS
/decl/flooring/tiling/orion/panel
	name = "decking"
	icon_base = "panel"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/tile2, /decl/flooring/tiling/orion/ribbed, /decl/flooring/tiling/orion/fan, /decl/flooring/tiling/orion/hazard)

/turf/floor/tiled/orion/panel
	name = "decking"
	icon_state = "panel"
	initial_flooring = /decl/flooring/tiling/orion/panel

//STANDARD TECH
/decl/flooring/tiling/orion/fan
	name = "decking"
	icon_base = "tech"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/tile2, /decl/flooring/tiling/orion/ribbed, /decl/flooring/tiling/orion/panel, /decl/flooring/tiling/orion/hazard)

/turf/floor/tiled/orion/fan
	name = "decking"
	icon_state = "tech"
	initial_flooring = /decl/flooring/tiling/orion/fan

//HAZARD
/decl/flooring/tiling/orion/hazard
	name = "decking"
	icon_base = "hazard"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/tile2, /decl/flooring/tiling/orion/ribbed, /decl/flooring/tiling/orion/panel, /decl/flooring/tiling/orion/fan, /decl/flooring/tiling/orion/hazard)

/turf/floor/tiled/orion/hazard
	name = "decking"
	icon_state = "hazard"
	initial_flooring = /decl/flooring/tiling/orion/hazard

//HAZARD RIBBED
/decl/flooring/tiling/orion/hazard/ribbed
	name = "decking"
	icon_base = "h_ribbed"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST

/turf/floor/tiled/orion/hazard/ribbed
	name = "decking"
	icon_state = "h_ribbed"
	initial_flooring = /decl/flooring/tiling/orion/hazard/ribbed

//HAZARD PANELS
/decl/flooring/tiling/orion/hazard/panel
	name = "decking"
	icon_base = "h_panel"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST

/turf/floor/tiled/orion/hazard/panel
	name = "decking"
	icon_state = "h_panel"
	initial_flooring = /decl/flooring/tiling/orion/hazard/panel

//HAZARD TECH
/decl/flooring/tiling/orion/hazard/fan
	name = "decking"
	icon_base = "h_tech"
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST

/turf/floor/tiled/orion/hazard/fan
	name = "decking"
	icon_state = "h_tech"
	initial_flooring = /decl/flooring/tiling/orion/hazard/fan




/decl/flooring/tiling/orion/wood
	icon = 'modular/turfs/floors/icons/tiles.dmi'
	name = "wooden floor"
	desc = "Polished redwood planks."
	footstep_sound = "wood"
	icon_base = "wood"
	damage_temperature = T0C+200
	descriptor = "planks"
	build_type = /obj/item/stack/tile/wood
	flags = TURF_CAN_BREAK | TURF_CAN_BURN | TURF_IS_FRAGILE | TURF_REMOVE_SCREWDRIVER | TURF_HIDES_THINGS

/turf/floor/tiled/orion/wood
	name = "wooden floor"
	icon = 'modular/turfs/floors/icons/tiles.dmi'
	icon_state = "wood"
	initial_flooring = /decl/flooring/tiling/orion/wood

/decl/flooring/tiling/orion/tech
	name = "decking"
	icon_base = "techfloor"
	icon = 'modular/turfs/floors/icons/tech.dmi'
	build_type = /obj/item/stack/tile/floor/steel
	footstep_sound = "floor"

	floor_smooth = SMOOTH_WHITELIST
	flooring_whitelist = list(/decl/flooring/tiling/orion/tech/panel, /decl/flooring/tiling/orion/tech/maint)

/turf/floor/tiled/orion/tech
	name = "decking"
	icon = 'modular/turfs/floors/icons/tech.dmi'
	icon_state = "techfloor"
	initial_flooring = /decl/flooring/tiling/orion/tech

/decl/flooring/tiling/orion/tech/panel
	icon_base = "techpanel"
	build_type = /obj/item/stack/tile/floor/steel/panels

/turf/floor/tiled/orion/tech/panel
	icon_state = "techpanel"
	initial_flooring = /decl/flooring/tiling/orion/tech/panel

/decl/flooring/tiling/orion/tech/conduit
	icon_base = "techconduit"
	build_type = /obj/item/stack/tile/floor/steel/panels

/turf/floor/tiled/orion/tech/conduit
	icon_state = "techconduit"
	initial_flooring = /decl/flooring/tiling/orion/tech/conduit

/decl/flooring/tiling/orion/tech/maint
	icon_base = "techmaint"
	build_type = /obj/item/stack/tile/floor/steel/panels

/turf/floor/tiled/orion/tech/maint
	icon_state = "techmaint"
	initial_flooring = /decl/flooring/tiling/orion/tech/maint



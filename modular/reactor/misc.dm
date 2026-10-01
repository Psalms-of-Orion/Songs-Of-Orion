/obj/machinery/multistructure/nuclear_reactor_part
	icon = './astra_reactor.dmi'
	MS_type = /datum/multistructure/nuclear_reactor
	anchored = TRUE

/obj/machinery/multistructure/nuclear_reactor_part/wall
	name = "containement wall"
	icon_state = "wall"

/obj/machinery/multistructure/nuclear_reactor_part/wall_input
	name = "reactor gas input"
	icon_state = "wall_input"

/obj/machinery/multistructure/nuclear_reactor_part/wall_output
	name = "reactor gas output"
	icon_state = "wall_output"

/obj/item/control_rod
	name = "control rod"
	desc = "A rod made of graphite, designed to moderate nuclear reactions by its presence."
	icon = 'modular/reactor/reactor_items.dmi'
	icon_state = "control"
	var/durability = 100
	matter = list(MATERIAL_STEEL = 10, MATERIAL_SILVER = 10)
	layer = TOP_ITEM_LAYER
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	throwforce = WEAPON_FORCE_WEAK
	hitsound = 'sound/weapons/melee/blunthit.ogg'
	dropped_sound = 'sound/items/drop_sounds/metalweapon.ogg'
	pickup_sound = 'sound/items/drop_sounds/food.ogg'
	dropped_sound_volume = 20

/obj/item/control_rod/update_icon()
	if(durability <= 5)
		icon_state = "[initial(icon_state)]_spent"
	else
		icon_state = initial(icon_state)

/obj/item/control_rod/throw_impact(atom/hit_atom, speed)
	..()
	if(isfloor(hit_atom))
		do_sparks(2, (rand(1,8)), src)
		update_icon()
		playsound(loc, 'sound/effects/metalpipe.ogg', 90, 1)


/obj/item/control_rod/makeshift
	name = "makeshift control rod"
	desc = "A bundle of steel rods welded around a carbon core. May compromise fission stack."
	icon_state = "makeshift"
	durability = 15
	matter = list(MATERIAL_STEEL = 5)

/obj/item/control_rod/spent
	name = "degraded control rod"
	desc = "A rod made of graphite, designed to moderate nuclear reactions by its presence."
	icon_state = "control_spent"
	durability = 25

/obj/item/control_rod/industrial
	name = "industrial control rod"
	desc = "A rod made of advanced graphite-impregnated alloys, designed to moderate industrial nuclear reactions."
	durability = 150
	icon_state = "industrial"
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_SILVER = 10)

/obj/item/control_rod/advanced
	name = "advanced control rod"
	desc = "A rod made of graphene nano-composits, designed to moderate high temperature nuclear reactions."
	durability = 300
	icon_state = "advanced"
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_SILVER = 10, MATERIAL_DIAMOND = 5)

/obj/item/fuel_rod
	name = "aetherium fuel rod"
	desc = "You shouldn't be seeing this."
	icon = 'modular/reactor/reactor_items.dmi'
	description_info = "DROP AND RUN. IF YOU CAN SEE IT, YOU ARE BEING IRRADIATED."
	var/gasefficiency = 0.05
	var/insertion = 0
	var/integrity = 100
	var/integrity_max = 100
	var/life = 100
	var/lifespan = 3600
	var/reflective = 1
	var/temperature = T20C
	var/specific_heat = 1	// J/(mol*K) - Caluclated by: (specific heat) [kJ/kg*K] * (molar mass) [g/mol] (g/mol = kg/mol * 1000, duh.)
	var/molar_mass = 1	// kg/mol
	var/mass = 1 // kg
	var/melting_point = 3000 // Entering the danger zone.
	var/decay_heat = 0 // MJ/mol (Yes, using MegaJoules per Mole. Techincally reduces power, but that reflects reduced lifespan.)
	var/refill_reagent
	var/rod_glow = COLOR_LIGHTING_GREEN_MACHINERY
	matter = list(MATERIAL_PLASTEEL = 10)
	layer = TOP_ITEM_LAYER //These shouldn't be very easy to hide due to how dangerous they are.
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL //heavy metal rod
	throwforce = WEAPON_FORCE_PAINFUL //NUCLEAR JAVELIN
	tool_qualities = list(QUALITY_CAUTERIZING = 10) //Unfortunately cannot be a variable of rod life
	hitsound = 'sound/weapons/melee/blunthit.ogg'
	dropped_sound = 'sound/items/drop_sounds/metalweapon.ogg'
	pickup_sound = 'sound/items/drop_sounds/food.ogg'
	dropped_sound_volume = 20

/obj/item/fuel_rod/asterium
	name = "asterium fuel rod"
	desc = "A rod made of asterium, acting as a suitable substitute for proper nuclear fuel."
	icon_state = "unobtanium"
	refill_reagent = "aetherium"
	rod_glow = COLOR_LIGHTING_CYAN_MACHINERY
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_AETHERIUM = 10)

/obj/item/fuel_rod/asterium/spent
	life = 1


/obj/item/fuel_rod/plutonium
	name = "plutonium fuel rod"
	desc = "A rod made of plutonium, acting as a suitable substitute for proper nuclear fuel."
	icon_state = "plasma"
	specific_heat = 36	// J/(mol*K)
	molar_mass = 0.244	// kg/mol
	mass = 5 // kg
	melting_point = 914
	decay_heat = 20342002 // MJ/mol
	lifespan = 1800
	refill_reagent = "plasma"
	rod_glow = COLOR_LIGHTING_ORANGE_MACHINERY
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLASMA = 20)

/obj/item/fuel_rod/plutonium/spent
	life = 1

/obj/item/fuel_rod/uranium
	name = "uranium fuel rod"
	desc = "A rod made of uranium, acting as a suitable substitute for proper nuclear fuel."
	icon_state = "uranium"
	specific_heat = 28	// J/(mol*K)
	molar_mass = 0.235	// kg/mol
	mass = 20 // kg
	melting_point = 1405
	decay_heat = 19536350 // MJ/mol
	refill_reagent = "uranium"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_URANIUM = 10)

/obj/item/fuel_rod/uranium/spent
	life = 1

/obj/item/fuel_rod/hotdog
	name = "hotdog fuel rod"
	desc = "Raw uranium ingots splinted into a fuel rod using rebar."
	icon_state = "hotdog"
	specific_heat = 28	// J/(mol*K)
	molar_mass = 0.235	// kg/mol
	mass = 20 // kg
	melting_point = 1405
	decay_heat = 19536350 // MJ/mol
	refill_reagent = "uranium"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_URANIUM = 10)

/obj/item/fuel_rod/hotdog/New()
	desc = "Raw uranium ingots splinted into a fuel rod using rebar. Unstable."
	specific_heat = 28 * (rand(0.7, 2))
	molar_mass = 0.235 + (rand(-0.015, 0.030))
	mass = 20 * (rand(0.05, 1.05))
	decay_heat = initial(decay_heat) - (initial(decay_heat) * (rand(0.25, 0.5)))
	life = 100 - (100 * rand(0.53, 0.87))

/obj/item/fuel_rod/uranium/spent
	life = 1

/obj/item/fuel_rod/update_icon()
	if(life <= 5)
		icon_state = "[initial(icon_state)]_spent"
	else
		icon_state = initial(icon_state)

/obj/item/fuel_rod/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/fuel_rod/New()
	. = ..()
	START_PROCESSING(SSobj, src)
	update_icon()

/obj/item/fuel_rod/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/fuel_rod/Process()
	if(isnull(loc))
		return PROCESS_KILL

	if(!istype(loc, /obj/machinery/multistructure/nuclear_reactor_part/fuel_rod))
		var/turf/T = get_turf(src)
		equalize(T.return_air(), gasefficiency)

		if(decay_heat > 0)
			var/insertion_multiplier = ROD_EXPOSED_POWER
			if(integrity == 0)
				insertion_multiplier = 1
			var/power = (tick_life(0, insertion_multiplier) / REACTOR_RADS_TO_MJ)
			adjust_thermal_energy(power)
	if(life > 0)
		PulseRadiation(src, (life * 0.5), (life * 0.2))
		var/glow_temp = temperature * 0.001
		set_light(l_range = glow_temp, l_power = glow_temp, l_color = rod_glow)
	if(life < 5)
		update_icon()
/obj/item/fuel_rod/proc/equalize(var/E, var/efficiency)
	var/our_heatcap = heat_capacity()
	// Ugly code ahead. Thanks for not allowing polymorphism, Byond.
	if(istype(E, /datum/multistructure/nuclear_reactor))
		var/datum/multistructure/nuclear_reactor/sharer = E
		var/share_heatcap = sharer.heat_capacity()

		if(our_heatcap + share_heatcap)
			var/new_temperature = ((temperature * our_heatcap) + (sharer.temperature * share_heatcap)) / (our_heatcap + share_heatcap)
			temperature += (new_temperature - temperature) * efficiency // Add efficiency here, since there's no gas.remove for non-gas objects.
			temperature = clamp(temperature, 0, ROD_TEMPERATURE_CUTOFF)
			sharer.temperature += (new_temperature - sharer.temperature) * efficiency
			sharer.temperature = clamp( sharer.temperature, 0,  ROD_TEMPERATURE_CUTOFF)
	else if(istype(E, /datum/gas_mixture))
		var/datum/gas_mixture/env = E
		var/datum/gas_mixture/sharer = env.remove(efficiency * env.total_moles)
		if(!sharer)
			return
		var/share_heatcap = sharer.heat_capacity()

		if(our_heatcap + share_heatcap)
			var/new_temperature = ((temperature * our_heatcap) + (sharer.temperature * share_heatcap)) / (our_heatcap + share_heatcap)
			temperature += (new_temperature - temperature) * efficiency
			temperature = clamp(temperature, 0, ROD_TEMPERATURE_CUTOFF)
			sharer.temperature += (new_temperature - sharer.temperature)
			sharer.temperature = clamp( sharer.temperature, 0,  ROD_TEMPERATURE_CUTOFF)
		env.merge(sharer)


	var/integrity_lost = integrity
	if(temperature > melting_point && melting_point > 0)
		integrity = max(0, integrity - (temperature / melting_point))
	else if(temperature > (melting_point * 0.9))
		integrity = max(0, integrity - ((1 / lifespan) * 100))
	if(integrity == 0 && integrity_lost > 0) // Meltdown time.
		meltdown()

/obj/item/fuel_rod/proc/adjust_thermal_energy(var/thermal_energy)
	if(mass < 1)
		return 0

	var/heat_capacity = heat_capacity()
	if(thermal_energy < 0)
		if(temperature < TCMB)
			return 0
		var/thermal_energy_limit = -(temperature - TCMB)*heat_capacity	//ensure temperature does not go below TCMB
		thermal_energy = max(thermal_energy, thermal_energy_limit)	//thermal_energy and thermal_energy_limit are negative here.
	temperature += thermal_energy/heat_capacity
	return thermal_energy

/obj/item/fuel_rod/proc/heat_capacity()
	. = specific_heat * (mass / molar_mass)

/obj/item/fuel_rod/proc/tick_life(var/apply_heat = 0, var/insertion_override = 0)
	var/applied_insertion = get_insertion()
	if(insertion_override)
		applied_insertion = insertion_override
	if(lifespan < 1 && life > 0)
		life = 0
	else if(life > 0)
		if(decay_heat > 0 || apply_heat)
			life = max(0, life - ((1 / lifespan) * applied_insertion * 100))
		if(life <= 0 && integrity > 0)
			name = "depleted [name]"
		else if(decay_heat > 0)
			return ((decay_heat * (mass / molar_mass)) / lifespan) * (min(life, 100) / 100) * applied_insertion


	return 0

/obj/item/fuel_rod/proc/get_insertion()
	var/applied_insertion = 1
	if(istype(loc, /obj/machinery/multistructure/nuclear_reactor_part/fuel_rod) && icon_state != "control_spent")
		applied_insertion = insertion
		loc = list(null)//VERY BAD TODO: NOT THIS
	return clamp( applied_insertion, 0,  1)

/obj/item/fuel_rod/proc/is_melted()
	return (icon_state == "control_spent") ? 1 : 0

/obj/item/fuel_rod/proc/meltdown()
	if(!is_melted())
		name = "melted [name]"
		icon_state = "control_spent" // TODO
		integrity = 0
		if(decay_heat > 0)
			life = life * 3
			decay_heat = decay_heat * 10  // Original was decay_heat * 10. Setting to 0 to counter memes (Testing phase. Unsure HOW much this is going to destroy everything)
			is_melted()
			integrity = 400
		else
			life = 0
	else
		return


/obj/item/fuel_rod/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/device/geiger))
		user.visible_message(SPAN_NOTICE("[user] points the geiger counter at the [src]."), SPAN_NOTICE("You scan the [src]."))
		to_chat(user, SPAN_WARNING("The [src] has [life]% of its energy remaining."))
		playsound(src, pick('sound/machines/geiger/geiger_veryhigh1.ogg','sound/machines/geiger/geiger_veryhigh2.ogg'), 30, 0)

//Rods burn your hands if they're hot and you're not wearing gloves. A hold-over from when we wanted to use tongs to carry them. May still make nuclear gauntlets or require insuls.
/obj/item/fuel_rod/attack_hand(mob/user)
	var/prot = FALSE
	var/mob/living/carbon/human/H = user

	if(istype(H))
		if(H.species.heat_level_1 > temperature)
			prot = TRUE
		else if(H.gloves)
			var/obj/item/clothing/gloves/G = H.gloves
			if(G.siemens_coefficient)
				if(G.siemens_coefficient < 0.5)
					prot = TRUE
	else
		prot = TRUE

	if(!prot)
		var/target_zone
		target_zone = pick(BP_L_ARM, BP_R_ARM)
		to_chat(user, "You try to grab a molten nuclear fuel rod. Suboptimal.")
		H.damage_through_armor((temperature * 0.03), BURN, target_zone, ARMOR_MELEE, used_weapon = src)
		playsound(loc, 'sound/items/welder2.ogg', 50, 1)
		H.emote("painscream")
		return
	if(prot)
		H.put_in_hands(src)

//Rods spark and irradiate slightly more when thrown
/obj/item/fuel_rod/throw_impact(atom/hit_atom, speed)
	..()
	if(isfloor(hit_atom))
		do_sparks(6, (rand(1,8)), src)
		PulseRadiation(src, (life * 0.55), (life * 0.3))
		update_icon()
		playsound(loc, 'sound/effects/metalpipe.ogg', 90, 1)

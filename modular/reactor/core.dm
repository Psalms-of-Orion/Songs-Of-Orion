/obj/structure/reactor_core
	name = "nuclear reactor core"
	desc = "The inside of a nuclear reactor."
	icon = './astra_reactor_insides.dmi'
	icon_state = "idle"
	anchored = TRUE
	density = FALSE
	bound_width = 96
	bound_height = 96
	health = 10000
	var/corepopped = FALSE
	var/corepopped_nuke = FALSE

	var/fragment_type = /obj/item/projectile/bullet/pellet/fragment/ember
	var/num_fragments = 150  //total number of fragments produced by the grenade
	var/fragment_damage = 60
	var/damage_step = 5      //projectiles lose a fragment each time they travel this distance. Can be a non-integer.
	var/spread_range = 8


/obj/structure/reactor_core/update_icon()
	if(corepopped == TRUE)
		icon_state = "yeah"
		health = 10000
	if(corepopped_nuke == TRUE)
		icon_state = "yeah"
		health = 10000

/obj/structure/reactor_core/proc/corepopped()
	if((icon_state == "yeah") && (corepopped == FALSE))
		message_admins("Core Proc corepopped called.")
		corepopped = TRUE
		playsound(loc, 'sound/machines/reactor_alert.ogg', 100, 0, ignore_walls = TRUE, zrange = 2)
		spawn(15 SECONDS)
			explosion(get_turf(src), 800, 80)
		update_icon()


/obj/structure/reactor_core/proc/corepopped_nuke()
	if(corepopped_nuke == FALSE)
		message_admins("Core Proc corepopped_nuke called.")
		corepopped_nuke = TRUE
		playsound(loc, 'sound/machines/reactor_alert.ogg', 100, 1, ignore_walls = TRUE)
		for(var/mob/living/mob in GLOB.living_mob_list)
			if(ishuman(mob))
			//Hilariously enough, running into a closet should make you get hit the hardest.
				var/mob/living/carbon/human/H = mob
				var/power = min(600, DETONATION_HALLUCINATION * sqrt(1 / (get_dist(mob, src) + 1)) )
				H.adjust_hallucination(power, power)
				var/rads = 2000 * sqrt( 1 / (get_dist(mob, src) + 1) )
				mob.apply_effect(rads, IRRADIATE)
		explosion(get_turf(src), 800, 50)
		empulse(src, 20, 30)
		heatwave(src, 12, 24, 130, TRUE, 1)
		update_icon()
		produce_radiation(src, 500, 100)
		spawn(1 SECONDS)
			fragment_explosion(src, spread_range, fragment_type, num_fragments, fragment_damage, damage_step)
			fragment_explosion(src, 8, (/obj/item/projectile/bullet/grenade/smoke), 15, 1, 3)
			AddRadSource(src, 1000, 24)
	else
		return
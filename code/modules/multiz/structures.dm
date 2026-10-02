//////////////////////////////
//Contents: Ladders, Stairs.//
//////////////////////////////

/obj/structure/multiz
	name = "ladder"
	density = FALSE
	opacity = FALSE
	anchored = TRUE
	icon = 'icons/obj/stairs.dmi'
	bad_type = /obj/structure/multiz
	health = 5000
	maxHealth = 5000
	var/istop = TRUE
	var/obj/structure/multiz/target
	var/obj/structure/multiz/targeted_by
/obj/structure/multiz/New()
	. = ..()
	for(var/obj/structure/multiz/M in loc)
		if(M != src)
			spawn(1)
				log_world("##MAP_ERROR: Multiple [initial(name)] at ([x],[y],[z])")
				qdel(src)
			return .

/obj/structure/multiz/CanPass(obj/mover, turf/source, height, airflow)
	return airflow || !density

/obj/structure/multiz/proc/find_target()
	if(target)
		target.targeted_by = src

/obj/structure/multiz/Initialize()
	. = ..()
	find_target()

/obj/structure/multiz/Destroy()
	if(target)
		target.targeted_by = null
		target = null

	if(targeted_by)
		targeted_by.target = null
		targeted_by = null

	return ..()


/obj/structure/multiz/attack_tk(mob/user)
	return

/obj/structure/multiz/attack_ghost(mob/user)
	. = ..()
	if(target)
		user.Move(get_turf(target))

/obj/structure/multiz/attack_ai(mob/living/silicon/user)
	if(target)
		if (isAI(user))
			var/turf/T = get_turf(target)
			T.move_camera_by_click()
		else if (Adjacent(user))
			attack_hand(user)

////LADDER////

/obj/structure/multiz/ladder
	icon = 'modular/icons/ladder.dmi'
	name = "ladder"
	desc = "A ladderway with a hatch that can be closed, locked, or sealed. Various tools could break through, but not easily."
	description_info = "You can look what is on the other side with Alt-Click. It can be opened or closed with Ctrl+Shift-Click.\
	If locked, it could be pried, drilled, or sawn open. It can also be welded shut."
	description_antag = "Don't try to place traps or slippery liquids onto the ladder's exit/entry directly, they won't work."
	icon_state = "top"
	var/climb_delay = 30
	var/ladder_closed = FALSE
	var/ladder_locked = FALSE
	var/ladder_forced = FALSE
	var/ladder_welded = FALSE
	var/id = null		//Source ladder
	var/id_target = null//Targeted ladder
	req_access = list()
var/list/obj/structure/multiz/ladder/LADDERS = list()



/obj/structure/multiz/ladder/Initialize()
	. = ..()
	synch_ladders()
	update_icon()

/obj/structure/multiz/ladder/find_target()
	var/turf/targetTurf = istop ? SSmapping.GetBelow(src) : SSmapping.GetAbove(src)
	target = locate(/obj/structure/multiz/ladder) in targetTurf
	LADDERS += src
	..()

/obj/structure/multiz/ladder/Destroy()
	if(target && istop)
		qdel(target)
		LADDERS -= src
	return ..()

/obj/structure/multiz/ladder/proc/synch_ladders()
	for(var/obj/structure/multiz/ladder/L in LADDERS)
		if(L.id == src.id_target)
			L.ladder_closed = ladder_closed
			L.ladder_locked = ladder_locked
			L.ladder_forced = ladder_forced
			L.ladder_welded = ladder_welded
			L.update_icon()
			return

/obj/structure/multiz/ladder/proc/pry_ladders()
	if(ladder_locked == TRUE)
		visible_message(SPAN_WARNING("The lock mechanism has been broken!"))
		ladder_forced = TRUE
		ladder_closed = FALSE
		ladder_locked = FALSE
		playsound(loc, 'sound/effects/metalpipe.ogg', 50, 1)
		do_sparks(6, (rand(1,8)), src)
		synch_ladders()
		update_icon()
	else
		playsound(loc, 'sound/effects/bang.ogg', 50, 1)
		ladder_closed = FALSE
		synch_ladders()
		update_icon()

/obj/structure/multiz/ladder/proc/weld_ladders()
	ladder_welded = !ladder_welded
	playsound(loc, pick('sound/effects/sparks1.ogg', 'sound/effects/sparks2.ogg', 'sound/effects/sparks3.ogg'), 50, 1)
	synch_ladders()
	update_icon()
	cut_overlays()
	if(!ladder_welded || !istop)
		cut_overlays()
	else
		overlays += image('modular/icons/ladder.dmi', "_welded")


/obj/structure/multiz/ladder/examine(mob/user)
	..()
	if(ladder_welded == TRUE)
		to_chat(user, SPAN_NOTICE("The hatch is welded shut."))
	if(ladder_forced == TRUE)
		to_chat(user, SPAN_NOTICE("The locking mechanism has been broken by force."))
	if(ladder_closed == TRUE && !ladder_locked && !ladder_welded)
		to_chat(user, SPAN_NOTICE("The hatch is closed."))
	if(ladder_locked == TRUE)
		to_chat(user, SPAN_NOTICE("The hatch is locked."))


/obj/structure/multiz/ladder/attack_generic(var/mob/M)
	attack_hand(M)

/obj/structure/multiz/ladder/CtrlShiftClick(var/mob/living/carbon/human/user)
	if(ladder_locked == TRUE && !ladder_welded)
		to_chat(user, SPAN_NOTICE("The [src] hatch is locked and cannot be opened."))
		return
	if(ladder_welded == TRUE)
		to_chat(user, SPAN_NOTICE("The [src] hatch is welded shut and cannot be opened."))
		return
	if(!user.is_physically_disabled() && !ladder_locked)
		to_chat(user, SPAN_NOTICE("You flip the hatch on the [src]."))
		ladder_closed = !ladder_closed
		update_icon()
		synch_ladders()
	else
		to_chat(user, SPAN_NOTICE("You can't do it right now."))
		return


/obj/structure/multiz/ladder/attackby(obj/item/W, mob/user as mob)
	if(istype(W, /obj/item/card))
		var/obj/item/card/id/id_card = W
		if(has_access(req_access, list(), id_card.access))
			ladder_locked = !ladder_locked
			ladder_closed = TRUE
			update_icon()
			synch_ladders()
			return
		else
			to_chat(user, SPAN_WARNING("Access Denied"))
			return
	if(istype(W, /obj/item/card) && ladder_forced == TRUE)
		to_chat(user, SPAN_WARNING("The lock mechanism has been broken."))

/obj/structure/multiz/ladder/update_icon()
	if(ladder_locked == TRUE)
		icon_state = initial(icon_state) + "_locked"
		playsound(loc, 'sound/machines/Custom_bolts.ogg', 50, 1)
	if(ladder_closed == TRUE && ladder_locked == FALSE)
		icon_state = initial(icon_state) + "_closed"
		playsound(loc, 'sound/machines/airlock_close_force.ogg', 50, 1)
	if(!ladder_locked && !ladder_closed)
		icon_state = initial(icon_state)
		playsound(loc, 'sound/machines/airlock_open_force.ogg', 50, 1)


/obj/structure/multiz/ladder/proc/throw_through(var/obj/item/C, var/mob/throw_man)
	if(istype(throw_man,/mob/living/carbon/human) && throw_man.canUnEquip(C) && !ladder_closed)
		var/mob/living/carbon/human/user = throw_man
		var/through =  istop ? "down" : "up"
		user.visible_message(SPAN_WARNING("[user] takes position to throw [C] [through] \the [src]."),
		SPAN_WARNING("You take position to throw [C] [through] \the [src]."))
		if(do_after(user, 10))
			user.visible_message(SPAN_WARNING("[user] throws [C] [through] \the [src]!"),
			SPAN_WARNING("You throw [C] [through] \the [src]."))
			user.drop_item()
			C.forceMove(target.loc)
			var/direction = pick(NORTH, SOUTH, EAST, WEST, NORTHEAST, NORTHWEST, SOUTHEAST, SOUTHWEST)
			C.Move(get_step(C, direction))
			if(istype(C, /obj/item/grenade))
				var/obj/item/grenade/G = C
				if(!G.active)
					G.activate(user)
			return TRUE
		return FALSE
	return FALSE

/obj/structure/multiz/ladder/attackby(obj/item/I, mob/user)
	. = ..()
	if(ladder_closed == TRUE)
		if(I.get_tool_type(user, list(QUALITY_PRYING), src) == QUALITY_PRYING)
			if(ladder_welded == TRUE)
				visible_message(SPAN_WARNING("The welds prevent the hatch from being pried open."))
				return
			playsound(loc, 'sound/machines/airlock_creaking.ogg', 50, 1)
			if(I.use_tool(user, src, WORKTIME_SLOW, QUALITY_PRYING, FAILCHANCE_CHALLENGING, required_stat = STAT_ROB) && !ladder_forced && !ladder_welded)
				user.visible_message(SPAN_NOTICE("[user] pries the [src] hatch open"), SPAN_NOTICE("You pry the hatch open."))
				pry_ladders()
				return
			if(ladder_welded == TRUE)
				visible_message(user, SPAN_WARNING("The welds prevent the hatch from being pried open."))
				return
			else
				visible_message(user, SPAN_WARNING("The lock mechanism has already been broken."))
				return
		if(I.get_tool_type(user, list(QUALITY_WELDING), src) == QUALITY_WELDING)
			do_sparks(6, (rand(1,8)), src)
			if(I.use_tool(user, src, WORKTIME_NORMAL, QUALITY_WELDING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
				if(!ladder_welded)
					user.visible_message(SPAN_NOTICE("[user] welds the [src] shut."), SPAN_NOTICE("You weld the [src] shut."))
					weld_ladders()
				else
					user.visible_message(SPAN_NOTICE("[user] burns off the welds holding the [src] shut."), SPAN_NOTICE("You melt the welds off the [src]."))
					weld_ladders()
		if(I.get_tool_type(user, list(QUALITY_SAWING), src) == QUALITY_SAWING && (ladder_welded == TRUE || ladder_locked == TRUE))
			do_sparks(6, (rand(1,8)), src)
			if(I.use_tool(user, src, WORKTIME_EXTREMELY_LONG, QUALITY_SAWING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
				ladder_welded = FALSE
				ladder_locked = FALSE
				ladder_forced = TRUE
				visible_message(SPAN_WARNING("Everything that holds the [src] shut has been cut away!"))
				playsound(loc, 'sound/effects/metalpipe.ogg', 50, 1)
				synch_ladders()
				update_icon()
		if(I.get_tool_type(user, list(QUALITY_DRILLING), src) == QUALITY_DRILLING && !ladder_forced)
			if(I.use_tool(user, src, WORKTIME_EXTREMELY_LONG, QUALITY_DRILLING, FAILCHANCE_HARD, required_stat = STAT_MEC))
				ladder_locked = FALSE
				ladder_forced = TRUE
				visible_message(SPAN_WARNING("The lock mechanism has been drilled out!"))
				playsound(loc, 'sound/effects/metalpipe.ogg', 50, 1)
				synch_ladders()
				update_icon()
		if(I.get_tool_type(user, list(QUALITY_BOLT_TURNING), src) == QUALITY_BOLT_TURNING && ladder_forced == TRUE)
			to_chat(user, SPAN_WARNING("You begin repairing the locking mechanism."))
			if(I.use_tool(user, src, WORKTIME_EXTREMELY_LONG, QUALITY_BOLT_TURNING, FAILCHANCE_CHALLENGING, required_stat = STAT_MEC))
				ladder_forced = FALSE
				to_chat(user, SPAN_WARNING("The locking bolts have been reset and re-enabled."))
				playsound(loc, 'sound/machines/Custom_bolts.ogg', 50, 1)
				synch_ladders()
				update_icon()
		if(I.get_tool_type(user, list(QUALITY_PULSING), src) == QUALITY_PULSING && !ladder_forced)
			to_chat(user, SPAN_WARNING("You begin hacking the locking mechanism."))
			if(I.use_tool(user, src, WORKTIME_EXTREMELY_LONG, QUALITY_PULSING, FAILCHANCE_CHALLENGING, required_stat = STAT_COG))
				ladder_locked = !ladder_locked
				playsound(loc, pick('sound/effects/compbeep4.ogg', 'sound/effects/compbeep5.ogg'), 80, 1)
				synch_ladders()
				update_icon()
				if(!ladder_locked)
					to_chat(user, SPAN_WARNING("You successfully unlocked the hatch."))
					playsound(loc, 'sound/machines/Custom_boltsup.ogg', 50, 1)
				else
					to_chat(user, SPAN_WARNING("You successfully locked the hatch."))
					playsound(loc, 'sound/machines/Custom_bolts.ogg', 50, 1)
		else
			to_chat(user, SPAN_WARNING("There is nothing useful that can do right now."))
			return
	if(throw_through(I,user))
		return
	else if(istype(I, /obj/item/mech_equipment) || istype(I, /obj/item/mech_component) || istype(I, /obj/item/tool/mech_kit))
		var/mob/living/exosuit = I.getContainingAtom()
		if(exosuit)
			attack_hand(exosuit)
	else
		attack_hand(user)

/obj/structure/multiz/ladder/attack_hand(var/mob/M)
	if (isrobot(M))
		var/mob/living/silicon/robot/R = M
		var/new_delay = climb_delay * (R.HasTrait(CYBORG_TRAIT_PARKOUR) ? 0.75 : 1) * (isdrone(M) ? 1 : 3 / R.speed_factor)
		climb(M, (new_delay))	//Robots are not built for climbing, they should go around where possible
								//I'd rather make them unable to use ladders at all, but eris' labyrinthine maintenance necessitates it
	else
		climb(M, climb_delay)


/obj/structure/multiz/ladder/proc/climb(mob/M, delay)
	if(ladder_locked == TRUE || ladder_closed == TRUE)
		to_chat(M, SPAN_NOTICE("\The [src] hatch is closed and must be opened to climb it."))
		return
	if(ladder_welded == TRUE)
		to_chat(M, SPAN_NOTICE("The hatch is welded shut, the [src] cannot be used."))
	if(!target || !istype(target.loc, /turf))
		to_chat(M, SPAN_NOTICE("\The [src] is incomplete and can't be climbed."))
		return
	if(isliving(M) && (ladder_locked == FALSE) && (ladder_closed == FALSE))
		var/mob/living/L = M
		delay *= (L.stats.getPerk(PERK_PARKOUR) ? 0.5 : 1)
	var/turf/T = target.loc
	var/mob/tempMob
	for(var/atom/A in T)
		if(!A.CanPass(M))
			to_chat(M, SPAN_NOTICE("\A [A] is blocking \the [src]."))
			return
		else if (A.density && ismob(A))
			tempMob = A
			continue

	if (tempMob)
		to_chat(M, SPAN_NOTICE("\A [tempMob] is blocking \the [src], making it harder to climb."))
		delay = delay * 1.5

	//Robots are a quarter ton of steel and most of them lack legs or arms of any appreciable sorts.
	//Even being able to climb ladders at all is a violation of newton'slaws. It shall at least be slow and communicated as such
	if (isrobot(M) && !isdrone(M))
		M.visible_message(
			"<span class='notice'>\A [M] starts slowly climbing [istop ? "down" : "up"] \a [src]!</span>",
			"<span class='danger'>You begin the slow, laborious process of dragging your hulking frame [istop ? "down" : "up"] \the [src]</span>",
			"<span class='danger'>You hear the tortured sound of strained metal.</span>"
		)
		T.visible_message(
			"<span class='danger'>[M] gradually drags itself [istop ? "down" : "up"] \a [src]!</span>",
			"<span class='danger'>You hear the tortured sound of strained metal.</span>"
		)
		playsound(src, 'sound/machines/airlock_creaking.ogg', 100, 1, 5,5)

	else
		M.visible_message(
			"<span class='notice'>\A [M] climbs [istop ? "down" : "up"] \a [src]!</span>",
			"You climb [istop ? "down" : "up"] \the [src]!",
			"You hear the grunting and clanging of a metal ladder being used."
		)
		T.visible_message(
			"<span class='warning'>Someone climbs [istop ? "down" : "up"] \a [src]!</span>",
			"You hear the grunting and clanging of a metal ladder being used."
		)
		playsound(src, pick(climb_sound), 100, 1, 5,5)

		delay = max(delay * M.stats.getMult(STAT_VIG, STAT_LEVEL_EXPERT), delay * 0.66)


	if(do_after(M, delay, src))
		M.forceMove(T)
		try_resolve_mob_pulling(M, src)

/obj/structure/multiz/ladder/AltClick(var/mob/living/carbon/human/user)
	if(get_dist(src, user) <= 3)
		if(!user.is_physically_disabled() && !ladder_closed)
			if(target)
				if(user.client)
					if(user.is_watching == TRUE)
						to_chat(user, SPAN_NOTICE("You look [istop ? "down" : "up"] \the [src]."))
						user.client.eye = user.client.mob
						user.client.perspective = MOB_PERSPECTIVE
						user.hud_used.updatePlaneMasters(user)
						user.is_watching = FALSE
						user.can_multiz_pb = FALSE
					else if(user.is_watching == FALSE)
						user.client.eye = target
						user.client.perspective = EYE_PERSPECTIVE
						user.hud_used.updatePlaneMasters(user)
						user.is_watching = TRUE
						if(Adjacent(user))
							user.can_multiz_pb = TRUE
				return
		else
			to_chat(user, SPAN_NOTICE("You can't do it right now."))
		return
	else
		user.client.eye = user.client.mob
		user.client.perspective = MOB_PERSPECTIVE
		user.hud_used.updatePlaneMasters(user)
		user.is_watching = FALSE
		return

/obj/structure/multiz/ladder/up
	icon_state = "bottom"
	istop = FALSE
	name = "ladder base"

/obj/structure/multiz/ladder/up/Initialize()
	..()
	LADDERS += src
	return INITIALIZE_HINT_LATELOAD

/obj/structure/multiz/ladder/up/LateInitialize()
	..()
	//Special initialize behaviour for upward ladders to stop artefacts from mobs going behind them but drawing infront of them)

	//Normally a ladder will hug the back wall of a tile and mobs will go over it

	//If the tile to the north is acessible, change our behaviour to hug the south of a tile and draw over all mobs
	var/turf/T = get_step(src, NORTH)
	if (turf_clear(T))
		layer = ABOVE_MOB_LAYER

////PRE-MADE////
//CLOSED
/obj/structure/multiz/ladder/closed
	ladder_closed = TRUE

/obj/structure/multiz/ladder/closed/Initialize()
	..()
	synch_ladders()
	update_icon()


/obj/structure/multiz/ladder/up/closed
	ladder_closed = TRUE

/obj/structure/multiz/ladder/up/closed/Initialize()
	..()
	synch_ladders()
	update_icon()

//LOCKED

/obj/structure/multiz/ladder/locked
	ladder_closed = TRUE
	ladder_locked = TRUE

/obj/structure/multiz/ladder/locked/Initialize()
	..()
	update_icon()

/obj/structure/multiz/ladder/up/locked
	ladder_closed = TRUE
	ladder_locked = TRUE

/obj/structure/multiz/ladder/up/locked/Initialize()
	..()
	synch_ladders()
	update_icon()




////STAIRS////

/obj/structure/multiz/stairs
	name = "stairs"
	desc = "Stairs leading to another deck. Not too useful if the gravity goes out."
	description_info = "Bullets can be shot through this and go onto the other side."
	description_antag = "Don't try placing traps/slippery items at the stair exit directly. They will not work"
	icon_state = "ramptop"
	layer = 2.4

/obj/structure/multiz/stairs/can_prevent_fall(above)
	return above ? FALSE : TRUE


/obj/structure/multiz/stairs/enter
	icon_state = "ramptop"

/obj/structure/multiz/stairs/enter/bottom
	istop = FALSE

/obj/structure/multiz/stairs/active
	density = TRUE
	icon_state = "rampdown"

/obj/structure/multiz/stairs/active/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover)) // if mover is not null, e.g. mob
		return FALSE
	return TRUE // if mover is null (air movement)

/obj/structure/multiz/stairs/active/find_target()
	var/turf/targetTurf = istop ? SSmapping.GetBelow(src) : SSmapping.GetAbove(src)
	target = locate(/obj/structure/multiz/stairs/enter) in targetTurf
	..()

/obj/structure/multiz/stairs/active/Bumped(var/atom/movable/AM)
	if(isnull(AM))
		return

	if(!target)
		if(ismob(AM))
			to_chat(AM, SPAN_WARNING("There are no stairs above."))
		log_debug("[src.type] at [src.x], [src.y], [src.z] have non-existant target")
		target = null
		return

	var/obj/structure/multiz/stairs/enter/ES = locate(/obj/structure/multiz/stairs/enter) in get_turf(AM)

	if(!ES && !istop)
		return

	AM.forceMove(get_turf(target))
	try_resolve_mob_pulling(AM, ES)

/obj/structure/multiz/stairs/attackby(obj/item/C, mob/user)
	. = ..()
	attack_hand(user)
	return

/obj/structure/multiz/stairs/active/attack_ai(mob/living/silicon/ai/user)
	. = ..()
	if(!target)
		to_chat(user, SPAN_WARNING("There are no stairs above."))
		log_debug("[src.type] at [src.x], [src.y], [src.z] have non-existant target")

/obj/structure/multiz/stairs/active/attack_robot(mob/user)
	. = ..()
	if(Adjacent(user))
		Bumped(user)

/obj/structure/multiz/stairs/active/attack_hand(mob/user)
	. = ..()
	Bumped(user)

/obj/structure/multiz/stairs/AltClick(var/mob/living/carbon/human/user)
	if(get_dist(src, user) <= 7)
		if(!user.is_physically_disabled())
			if(target)
				if(user.client)
					if(user.is_watching == TRUE)
						to_chat(user, SPAN_NOTICE("You look [istop ? "down" : "up"] \the [src]."))
						user.client.eye = user.client.mob
						user.client.perspective = MOB_PERSPECTIVE
						user.hud_used.updatePlaneMasters(user)
						user.is_watching = FALSE
					else if(user.is_watching == FALSE)
						user.client.eye = target
						user.client.perspective = EYE_PERSPECTIVE
						user.hud_used.updatePlaneMasters(user)
						user.is_watching = TRUE
				return
		else
			to_chat(user, SPAN_NOTICE("You can't do it right now."))
		return
	else
		user.client.eye = user.client.mob
		user.client.perspective = MOB_PERSPECTIVE
		user.hud_used.updatePlaneMasters(user)
		user.is_watching = FALSE
		return

/obj/structure/multiz/stairs/active/bottom
	icon_state = "rampup"
	istop = FALSE




/obj/structure/multiz/ladder/burrow_hole
	name = "ancient maintenance tunnel"
	desc = "A deep metal tunnel. You wonder where it leads."
	icon = 'icons/obj/burrows.dmi'
	icon_state = "maint_hole"


/obj/structure/multiz/ladder/up/deepmaint
	name = "maintenance ladder"

/obj/structure/multiz/ladder/up/deepmaint/climb()
	if(!target)
		var/obj/structure/burrow/my_burrow = pick(GLOB.all_burrows)
		var/obj/structure/multiz/ladder/burrow_hole/my_hole = new /obj/structure/multiz/ladder/burrow_hole(my_burrow.loc)
		my_burrow.deepmaint_entry_point = FALSE
		target = my_hole
		my_hole.target = src
		var/list/seen = viewers(7, my_burrow.loc)
		my_burrow.audio("crumble", 80)
		for(var/mob/M in seen)
			M.show_message(SPAN_NOTICE("The burrow collapses inwards!"), 1)

		free_deepmaint_ladders -= src
		my_burrow.collapse()

	..()

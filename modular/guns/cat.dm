/obj/item/gun/energy/cat
	name = "C.A.T."
	desc = "The Cosmonaut Assistant Tool, a multispectral EMF emmitter and diagnostic system. When set properly, it can disable virtually any organism or equipment."
	description_info = "Can be used as low-grade multi-tool for pulsing wires."
	icon = 'modular/guns/icons/cat.dmi'
	icon_state = "cat"
	item_state = "cat"
	item_charge_meter = TRUE
	fire_sound = 'sound/weapons/Laser.ogg'
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	matter = list(MATERIAL_PLASTEEL = 24, MATERIAL_WOOD = 8, MATERIAL_SILVER = 10)
	price_tag = 3000
	twohanded = TRUE
	damage_multiplier = 2
	penetration_multiplier = 0.8
	init_recoil = LMG_RECOIL(1)
	serial_type = "SA"
	var/status = FALSE
	init_firemodes = list(
		list(mode_name="stun", mode_desc="Fires an electrical pulse tuned to living organisms.", projectile_type=/obj/item/projectile/energy/electrode/stunshot, charge_cost=200, burst=1, fire_delay=12, icon="stun", fire_sound = 'sound/weapons/cat/cat_fire.ogg'),
		list(mode_name="flash", mode_desc="Fire a blinding flash", projectile_type=/obj/item/projectile/energy/flash, charge_cost=50, burst=1, fire_delay=20, icon="stun", fire_sound = 'sound/weapons/lasercannonfire.ogg'),
		list(mode_name="ion", mode_desc="Fires an electical-ion pulse tuned to disable machinery.", projectile_type=/obj/item/projectile/ion, charge_cost=200, burst=1, fire_delay=12, icon="charge", fire_sound = 'sound/weapons/cat/cat_fire2.ogg')
	)

/obj/item/gun/energy/cat/proc/set_status(s)
	if(cell && cell.charge <= charge_cost)
		status = TRUE
	else
		status = FALSE
	tool_qualities = status ? list(QUALITY_PULSING = 15) : null
	update_icon()

/obj/item/gun/energy/cat/emp_act(severity)
	..(max(severity, 2)) //so it doesn't EMP itself, I guess

/obj/item/gun/energy/cat/update_icon(ignore_inhands)
	..(TRUE)
	if(!cell || cell.charge < charge_cost)
		set_item_state("-empty", hands = TRUE)
	else
		set_item_state(null, hands = TRUE)
	cut_overlays()
	if(cell && cell.charge >= charge_cost) //no overlay if we dont have any power
		update_mode()

/obj/item/gun/energy/cat/proc/update_mode()
	var/datum/firemode/current_mode = firemodes[sel_mode]
	switch(current_mode.name)
		if("stun")
			overlays += "taser"
			playsound(src, pick('sound/weapons/cat/cat_bolt1.ogg','sound/weapons/cat/cat_bolt2.ogg'), 80, 0)
		if("flash")
			overlays += "flash"
			playsound(src, pick('sound/weapons/cat/cat_flare.ogg','sound/weapons/cat/cat_flare2.ogg'), 80, 0)
		if("ion")
			overlays += "emp"
			playsound(src, pick('sound/weapons/cat/cat_emp.ogg','sound/weapons/cat/cat_emp.ogg'), 80, 0)
		else
			cut_overlays()
			playsound(src, pick('sound/weapons/cat/cat_bolt2.ogg'), 70, 0)

/obj/item/gun/energy/cat/attackby(obj/item/I, mob/user)
	..()
	if(istype(I,/obj/item/cell/medium))
		playsound(src, pick('sound/weapons/cat/cat_power.ogg','sound/weapons/cat/cat_power2.ogg','sound/weapons/cat/cat_power3.ogg'), 99, 0)
	else
		return

/obj/item/gun/energy/cat/handle_post_fire(mob/living/user)
	..()
	do_sparks(6, (user.dir), src)
	do_sparks(6, (rand(1,8)), src)
	spawn(0.1 SECONDS)
		do_sparks(8, (rand(1,8)), src)

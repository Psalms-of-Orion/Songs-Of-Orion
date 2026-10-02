/obj/item/gun/energy/robo_smg
	name = "mounted SMG"
	desc = "A mounted caseless submachine gun."
	description_info = "Can select between lethal or rubber projectiles."
	icon = 'modular/guns/icons/robot_guns.dmi'
	icon_state = "smg"
	item_charge_meter = TRUE
	item_state = "eshotgun"
	charge_meter = TRUE
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2, TECH_ENGINEERING = 4)
	charge_cost = 5
	suitable_cell = /obj/item/cell/small
	projectile_type = /obj/item/projectile/bullet/shotgun
	fire_delay = 2 //Equivalent to a pump then fire time
	fire_sound = 'sound/weapons/guns/fire/smg_fire.ogg'
	self_recharge = TRUE
	use_external_power = TRUE
	safety = FALSE
	restrict_safety = TRUE
	var/consume_cell = FALSE
	cell_type = /obj/item/cell/small/moebius/nuclear //Two shots
	twohanded = FALSE
	init_firemodes = list(
		list(mode_name="Lethal", mode_desc="Fires a burst of caseless bullets", projectile_type=/obj/item/projectile/bullet/clrifle, charge_cost=5, burst=3, fire_delay=12, icon="auto", burst_delay = 1.4),
		list(mode_name="Rubber", mode_desc="Fires a burst of rubber bullets", projectile_type=/obj/item/projectile/bullet/clrifle/rubber, charge_cost=5, burst=3, fire_delay=12, icon="auto", burst_delay = 1.4),
	)
	price_tag = 2500
	init_recoil = CARBINE_RECOIL(1)

	serial_type = "OR"

/obj/item/gun/energy/robo_smg/update_icon()
 	..()

/obj/item/gun/energy/robo_smg/consume_next_projectile()
	if(!cell) return null
	if(!ispath(projectile_type)) return null
	if(consume_cell && !cell.checked_use(charge_cost))
		visible_message(SPAN_WARNING("\The [cell] of \the [src] burns out!"))
		qdel(cell)
		cell = null
		playsound(loc, 'sound/weapons/Egloves.ogg', 50, 1, -1)
		new /obj/effect/decal/cleanable/ash(get_turf(src))
		return new projectile_type(src)
	else if(!consume_cell && !cell.checked_use(charge_cost))
		return null
	else
		return new projectile_type(src)

/obj/item/gun/energy/robo_smg/advanced
	name = "mounted pulse carbine"
	desc = "A mounted caseless submachine gun with underslung taser."
	description_info = "Interact with the weapon to change firemodes between bursts of rubber bullets, taser electrodes, or semi-auto AP rounds."
	icon_state = "pulse"
	init_recoil = SMG_RECOIL(1)
	init_firemodes = list(
		list(mode_name="Rubber - Burst", mode_desc="Fires a burst of rubber bullets", projectile_type=/obj/item/projectile/bullet/clrifle/rubber, charge_cost=5, burst=3, fire_delay=12, icon="auto", burst_delay = 1.4, fire_sound = 'sound/weapons/guns/fire/smg_fire.ogg'),
		list(mode_name="TASER", mode_desc="Fires a TASER electrode", projectile_type=/obj/item/projectile/energy/electrode/stunshot, charge_cost=50, burst=1, fire_delay=20, icon="stun", fire_sound = 'sound/weapons/guns/fire/cal/35pistol.ogg'),
		list(mode_name="Lethal - Semi-Auto", mode_desc="Fires semi auto lethal projectiles", projectile_type=/obj/item/projectile/bullet/clrifle/hv, charge_cost=25, burst=1, fire_delay=6, icon="semi", fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg')
	)

/obj/item/gun/energy/shrapnel/mounted/astra
	name = "mounted scattergun"
	desc = "For every son to bear a gun, a thousand more will do."
	icon_state = "mounted"
	icon = 'modular/guns/icons/robot_guns.dmi'
	self_recharge = TRUE
	use_external_power = TRUE
	safety = FALSE
	restrict_safety = TRUE
	consume_cell = FALSE
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	cell_type = /obj/item/cell/small/high //Two shots
	bad_type = /obj/item/gun/energy/shrapnel/mounted/astra
	charge_cost = 50
	twohanded = FALSE
	init_firemodes = list(
		list(mode_name="Buckshot", mode_desc="Fires a buckshot shell", projectile_type=/obj/item/projectile/bullet/pellet/shotgun, charge_cost=100, icon="kill"),
		list(mode_name="Beanbag", mode_desc="Fires a beanbag shell", projectile_type=/obj/item/projectile/bullet/shotgun/beanbag, charge_cost=25, icon="stun"),
		list(mode_name="Blast", mode_desc="Fires a slug shell", projectile_type=/obj/item/projectile/bullet/shotgun, charge_cost=null, icon="destroy"),
	)

/obj/item/grenade/explosive
	name = "NT OBG \"Cracker\""
	desc = "A military-grade offensive blast grenade, designed to be thrown by assaulting troops."
	icon_state = "explosive"
	matter = list(MATERIAL_STEEL = 5)

	var/explosion_power = 350
	var/explosion_falloff = 75
	var/explosion_flags = 0
	var/flash_range = 10


/obj/item/grenade/explosive/prime()
    set waitfor = 0
    ..()
    var/turf/O = get_turf(src)
    if(!O) return

    on_explosion(O)

    qdel(src)

/obj/item/grenade/explosive/proc/on_explosion(var/turf/O)
	explosion(O, explosion_power, explosion_falloff, explosion_flags)

/obj/item/grenade/explosive/nt
	name = "NT OBG \"Holy Grail\""
	desc = "There's an inscription along the bands. \'And the Lord spake, saying: First shalt thou take out the Holy Pin. Then, shalt thou count to three, no more, no less. Three shall be the number thou shalt count, and the number of the counting shall be three. Four shalt thou not count, nor either count thou two, excepting that thou then proceed to three. Five is right out! Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thou foe, who being naughty in my sight, shall snuff it.\'"
	icon_state = "explosive_nt"
	item_state = "explosive_nt"
	explosion_power = 500
	explosion_falloff = 80
	matter = list(MATERIAL_BIOMATTER = 100)


/obj/item/grenade/explosive/vest
	icon = 'icons/inventory/suit/icon.dmi'
	name = "suicide vest"
	desc = "Grant us the life of true peace and usher us into the abode of peace."
	icon_state = "explosive"
	item_state = "explosive"
	explosion_power = 1200
	explosion_falloff = 75
	w_class = ITEM_SIZE_HUGE
	matter = list(MATERIAL_BIOMATTER = 120)
	throw_range = 1
	slot_flags = SLOT_OCLOTHING
	slowdown_hold = 1.5
	action_button_name = "Arm Payload"
	action_button_proc = "martyr"

/obj/item/grenade/proc/martyr(mob/user as mob)
	if(active)
		return
	if (equip_slot == 13)
		activate(user)
	else
		to_chat(user, SPAN_WARNING("The device must be worn by a martyr to be armed."))
		return

/obj/item/grenade/explosive/vest/attack_self(mob/user as mob)
	if(!active)
		add_fingerprint(user)
		to_chat(user, SPAN_WARNING("This should be worn by the destined."))
	return


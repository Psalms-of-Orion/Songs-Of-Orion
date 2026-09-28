/obj/item/device/radio/intercom
	name = "ship intercom (General)"
	desc = "Talk through this."
	icon_state = "intercom"
	anchored = TRUE
	spawn_tags = null
	slot_flags = null
	w_class = ITEM_SIZE_BULKY
	canhear_range = 2
	flags = CONDUCT | NOBLOODY
	var/number = 0
	var/area/linked_area
	subspace_transmission = 1

/obj/item/device/radio/intercom/custom
	name = "ship intercom (Custom)"
	broadcasting = 0
	listening = 0

/obj/item/device/radio/intercom/interrogation
	name = "ship intercom (Interrogation)"
	frequency  = 1449

/obj/item/device/radio/intercom/private
	name = "ship intercom (Private)"
	frequency = AI_FREQ

/obj/item/device/radio/intercom/department
	canhear_range = 5
	broadcasting = 0
	listening = 1

/obj/item/device/radio/intercom/department/medbay
	name = "ship intercom (Medbay)"
	frequency = MED_I_FREQ
	channels = list("Medical" = 1, "Medical(Public)" = 1, "Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1)

/obj/item/device/radio/intercom/department/security
	name = "ship intercom (Security)"
	frequency = SEC_I_FREQ
	channels = list("Medical(Public)" = 1, "Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1)

/obj/item/device/radio/intercom/New()
	..()
	loop_area_check()
/*
/obj/item/device/radio/intercom/department/medbay/New()
	..()
	internal_channels = default_medbay_channels.Copy()

/obj/item/device/radio/intercom/department/security/New()
	..()
	internal_channels = list(
		num2text(PUB_FREQ) = list(),
		num2text(SEC_I_FREQ) = list(access_security)
	)
*/

/obj/item/device/radio/intercom/syndicate
	name = "illicit intercom"
	desc = "Talk through this. Evilly"
	frequency = SYND_FREQ
	subspace_transmission = 1
	syndie = 1

/obj/item/device/radio/intercom/syndicate/New()
	..()
	internal_channels[num2text(SYND_FREQ)] = list(access_syndicate)

/obj/item/device/radio/intercom/attack_ai(mob/user as mob)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/intercom/attack_hand(mob/user as mob)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)
	update_icon()
/obj/item/device/radio/intercom/receive_range(freq, level)
	if (!on)
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if (!src.listening)
		return -1
	if(freq in ANTAG_FREQS)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range

/obj/item/device/radio/intercom/proc/change_status()
	SIGNAL_HANDLER
	on = linked_area.powered(STATIC_EQUIP)
	icon_state = on ? "intercom" : "intercom-p"
	update_icon()

/obj/item/device/radio/intercom/proc/loop_area_check()
	var/area/target_area = get_area(src)
	if(!target_area?.apc)
		addtimer(CALLBACK(src, PROC_REF(loop_area_check)), 30 SECONDS, TIMER_STOPPABLE) // We don't proces if there is no APC , no point in doing so is there ?
		return FALSE
	linked_area = target_area
	RegisterSignal(target_area, COMSIG_AREA_APC_DELETED, PROC_REF(on_apc_removal))
	RegisterSignal(target_area, COMSIG_AREA_APC_POWER_CHANGE, PROC_REF(change_status))

/obj/item/device/radio/intercom/proc/on_apc_removal()
	SIGNAL_HANDLER
	UnregisterSignal(linked_area , COMSIG_AREA_APC_DELETED)
	UnregisterSignal(linked_area, COMSIG_AREA_APC_POWER_CHANGE)
	linked_area = null
	on = FALSE
	icon_state = "intercom-p"
	addtimer(CALLBACK(src, PROC_REF(loop_area_check)), 30 SECONDS)

/obj/item/device/radio/intercom/broadcasting
	broadcasting = 1
	update_icon()
/obj/item/device/radio/intercom/locked
    var/locked_frequency

/obj/item/device/radio/intercom/locked/set_frequency(var/frequency)
	if(frequency == locked_frequency)
		..(locked_frequency)

/obj/item/device/radio/intercom/locked/list_channels()
	return ""

/obj/item/device/radio/intercom/locked/ai_private
	name = "\improper AI intercom"
	frequency = AI_FREQ
	broadcasting = 1
	listening = 1

/obj/item/device/radio/intercom/locked/confessional
	name = "confessional intercom"
	frequency = 1480



/obj/item/device/radio/telephone
	name = "conference phone"
	desc = "The number you have dialed is not in service. Like an intercomm, but a landline."
	icon = 'icons/obj/radio.dmi'
	icon_state = "telephone"
	anchored = TRUE
	spawn_tags = null
	slot_flags = null
	w_class = ITEM_SIZE_BULKY
	canhear_range = 2
	flags = CONDUCT | NOBLOODY
	var/number = 0
	subspace_transmission = 1

/obj/item/device/radio/telephone/attack_ai(mob/user as mob)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/telephone/attack_hand(mob/user as mob)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)
	update_icon()

/obj/item/device/radio/telephone/update_icon()
	..()
	cut_overlays()
	if(broadcasting == 1)
		overlays += image(icon, "[icon_state]_on")
		playsound(loc, 'sound/machines/phone_up.ogg', 50, 1)
	if(listening == 1)
		overlays += image(icon, "[icon_state]_rec")
	else
		cut_overlays()

/obj/item/device/radio/telephone/medical
	name = "conference phone"
	frequency = MED_I_FREQ
	channels = list("Command(Public)" = 1, "Science(Public)" = 1, "Medical(Public)" = 1, "Medical" = 1,"Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/security
	name = "conference phone"
	frequency = SEC_I_FREQ

/obj/item/device/radio/telephone/security/internal
	name = "conference phone"
	frequency = SEC_FREQ
	channels = list("Command(Public)" = 1, "Medical(Public)" = 1, "Science(Public)" = 1, "Security(Public)" = 1, "Security" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/science
	name = "conference phone"
	frequency = SCI_I_FREQ
	channels = list("Command(Public)" = 1, "Science(Public)" = 1, "Medical(Public)" = 1, "Science" = 1,"Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/suppply
	name = "conference phone"
	frequency = SUP_I_FREQ
	channels = list("Command(Public)" = 1, "Science(Public)" = 1, "Medical(Public)" = 1, "Supply" = 1,"Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/eng
	name = "conference phone"
	frequency = ENG_I_FREQ
	channels = list("Command(Public)" = 1, "Science(Public)" = 1, "Medical(Public)" = 1, "Engineering" = 1,"Security(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)
	subspace_transmission = 0 //Robust, works no matter what.

/obj/item/device/radio/telephone/red/cap
	name = "Red Phone"
	desc = "THE Red Phone. It will get a message through no matter what, to anyone."
	frequency = COMM_I_FREQ
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical" = 1, "Security" = 1, "Engineering" = 1, "Supply" = 1, "Science" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/med
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Medical" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/sci
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Science" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/sec
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Security" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/cargo
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Supply" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/eng
	name = "Command Phone"
	desc = "Emergency telephone linked to the redundant low-band communications systems, it will get a message through no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical(Public)" = 1, "Engineering" = 1, "Security(Public)" = 1, "Science(Public)" = 1, "Engineering(Public)" = 1, "Supply(Public)" = 1, "AI(Public)" = 1)

/obj/item/device/radio/telephone/red/centcom
	name = "Reddest Phone"
	desc = "It will get a message through, no matter what."
	frequency = COMM_I_FREQ
	icon_state = "redphone"
	channels = list("Command(Public)" = 1, "Command" = 1, "Medical" = 1, "Engineering" = 1, "Security" = 1, "Science" = 1, "Supply" = 1, "AI" = 1, "Special Ops" = 1, "Mercenary" = 1, "Pirate" = 1)

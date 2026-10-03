/*
 * Contains:
 *		Security
 *		Inspector
 *		Ironhammer Commander
 */

/*
 * Security
 */

/obj/item/clothing/under/security_formal
	name = "ironhammer formal uniform"
	desc = "A navy blue suit. Often used by Ironhammer personnel, for shooting with style."
	icon_state = "ih_formal"
	item_state = "ih_formal"
	spawn_blacklisted = TRUE

/obj/item/clothing/under/rank/warden
	desc = "The uniform worn by Ironhammer Sergeants, the sight of it is often followed by shouting. It has\"Gunnery Sergeant\" rank pins on the shoulders."
	name = "Gunnery Sergeant jumpsuit"
	icon_state = "warden"
	item_state = "r_suit"
	siemens_coefficient = 0.8

/obj/item/clothing/under/rank/warden/skirt
	name = "Gunnery Sergeant jumpskirt"
	desc = "It's made of a slightly sturdier material than standard jumpskirts, to allow for more robust protection. It has\"Gunnery Sergeant\" rank pins on the shoulders."
	icon_state = "warden_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/head/warden //legacy security hat
	name = "warden hat"
	desc = "A special helmet issued to the Warden of a securiy force."
	icon_state = "policehelm"
	body_parts_covered = NONE

/obj/item/clothing/under/rank/security/turtleneck
	name = "Ironhammer Operative's turtleneck"
	desc = "Same as the standard Ironhammer uniform but with a sleek black military style sweater. Best used in cold environments"
	icon_state = "securityrturtle"


/*
 * Inspector
 */

/obj/item/clothing/under/rank/det
	name = "inspector's suit"
	desc = "A rumpled white dress shirt paired with well-worn grey slacks, complete with a blue striped tie and a faux-gold tie clip."
	icon_state = "detective"
	item_state = "det"
	siemens_coefficient = 0.8
	spawn_blacklisted = TRUE //no sprite

/obj/item/clothing/under/rank/det/black
	icon_state = "detective3"
	//item_state = "sl_suit"
	desc = "An immaculate white dress shirt, paired with a pair of dark grey dress pants, a red tie, and a charcoal vest."
	spawn_blacklisted = TRUE //no sprite

/obj/item/clothing/head/detective
	name = "fedora"
	desc = "A brown fedora - either the cornerstone of a detective's style or a poor attempt at looking cool, depending on the person wearing it."
	icon_state = "detective_brown"
	item_state_slots = list(
		slot_l_hand_str = "detective_hat",
		slot_r_hand_str = "detective_hat",
		)
	allowed = list(/obj/item/reagent_containers/food/snacks/candy_corn, /obj/item/pen)
	armor = list(
		melee = 2,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	siemens_coefficient = 0.8
	body_parts_covered = NONE
	spawn_blacklisted = TRUE //no sprite

/obj/item/clothing/head/detective/grey
	icon_state = "detective_gray"
	desc = "A grey fedora - either the cornerstone of a detective's style or a poor attempt at looking cool, depending on the person wearing it."
	spawn_blacklisted = TRUE //no sprite

/obj/item/clothing/head/detective/black
	icon_state = "detective_black"
	desc = "A black fedora - either the cornerstone of a detective's style or a poor attempt at looking cool, depending on the person wearing it."
	spawn_blacklisted = TRUE //no sprite


/*
 * Ironhammer Commander
 */
/obj/item/clothing/under/rank/ih_commander
	desc = "The uniform of an on-field Ironhammer officer. Used to distinguish officers from the grunts. It has \"Lieutenant\" rank pins on the shoulder"
	name = "Ironhammer Commander's jumpsuit"
	icon_state = "hos"
	item_state = "r_suit"
	siemens_coefficient = 0.8
	spawn_blacklisted = TRUE //no sprite


/obj/item/clothing/under/rank/ih_commander/skirt
	name = "Ironhammer Commander's jumpskirt"
	desc = "A jumpskirt worn by those few with the dedication to achieve the position of \"Ironhammer Commander\"."
	icon_state = "hos_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	spawn_blacklisted = TRUE //no sprite

/obj/item/clothing/head/HoS
	name = "Ironhammer Commander Hat"
	desc = "The hat of the Ironhammer Commander. For showing the enlisted who's in charge."
	icon_state = "hoshat"
	body_parts_covered = NONE
	siemens_coefficient = 0.8
	spawn_blacklisted = TRUE //no sprite

/*
 * "Navy" uniforms
 */
/obj/item/clothing/under/rank/cadet
	name = "Ironhammer Cadet's jumpskirt"
	desc = "A sailor's uniform used for cadets in training, though more frequently in acts of hazing."
	icon_state = "cadet"
	item_state = "cadet"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	spawn_blacklisted = TRUE //no sprite

//////
//PCRC
//////

/obj/item/clothing/under/rank/hos
	name = "Director of Asset Denial uniform"
	desc = "The uniform an overworked PCRC middle manager, with the appropriate pins and badges upon a white button-up and some navy slacks."
	icon_state = "hos"
	item_state = "r_suit"
	siemens_coefficient = 0.8
	spawn_blacklisted = TRUE

/obj/item/clothing/under/rank/inspector
	name = "Deputy suit"
	desc = "Fancy dress shirt, slacks and tie. The fancy civilian clothes of a Solar Marshal Deputy."
	icon_state = "deckard"
	item_state = "deckard"
	siemens_coefficient = 0.8

/obj/item/clothing/under/rank/security
	name = "security uniform"
	desc = "The station security loadout of Proxima Centauri Risk Control, a robustly reinforced Class-B police uniform."
	icon_state = "security"
	item_state = "ba_suit"
	siemens_coefficient = 0.8
	armor = list(
		melee = 5,
		bullet = 5,
		energy = 5,
		bomb = 5,
		bio = 5,
		rad = 0
	)//For now, they're intended to not wear body armor most of the time, so the uniform is light armor.

/obj/item/clothing/under/rank/security/skirt
	name = "security skirt"
	desc = "It's made of sturdier material than standard jumpskirts, to allow for robust protection."
	icon_state = "security_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/security/red
	name = "old security uniform"
	desc = "An old NanoTrassen Internal Security Division uniform."
	icon_state = "sec_red"
	item_state = "ba_suit"

/obj/item/clothing/under/rank/security/red/skirt
	name = "old security skirt"
	desc = "An old NanoTrassen Internal Security Division skirt."
	icon_state = "sec_red_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/medspec
	name = "SARS uniform"
	desc = "An advanced set of tactical clothes setup for critical rescue operations. Baggy, comfortable."
	icon_state = "sar"
	item_state = "ba_suit"
	siemens_coefficient = 0.8
	slowdown = -0.2//maybe?
	armor = list(
		melee = 5,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 10,
		rad = 0
	)

	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS

/obj/item/clothing/under/rank/medspec/skirt
	name = "SARS skirt"
	desc = "Advanced combat top paired with an equally advanced smart-skirt. Maximum mobility and minimal up-skirt."
	icon_state = "sar_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/frog/sar
	name = "combat medical uniform"
	desc = "Flame Resistant Organizational Gear. A bit much for this, no?"
	icon_state = "frog_sar"
	item_state = "frog_sar"
	permeability_coefficient = 0.50
	armor = list(
		melee = 5,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 10,
		rad = 0
	)

/obj/item/clothing/under/frog/sar/skirt
	name = "combat medical skirt"
	desc = "Flame Resistant Organizational Gear. Does the skirt defeat the purpose?"
	icon_state = "frog_skirt"
	item_state = "frog_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/obj/item/clothing/under/rank/security/bdu
	name = "Peacekeeper battle dress"
	desc = "Our will is unbroken, unmatched by design."
	description_info = "SOLCOM Peacekeeper standard uniform. Recognized by everyone, everywhere."
	icon_state = "bdu"
	item_state = "bdu"

/obj/item/clothing/under/rank/security/camo
	name = "urban battle dress"
	desc = "A T-pattern combat uniform."
	description_info = "SOLCOM combat uniform, can be toggled to wear with just a tee-shirt."
	icon_state = "mout"
	item_state = "mout"
	var/camo_type
	var/camo_tee
	bad_type = /obj/item/clothing/under/rank/security/camo

/obj/item/clothing/under/rank/security/camo/attack_self(mob/living/user)
	var/list/options = list()
	options["With Blouse"] = list(camo_type)
	options["With Tee-Shirt"] = list(camo_tee)

	var/choice = input(user,"How do you want to wear this?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/clothing/under/rank/security/camo/))
				to_chat(user, SPAN_NOTICE("You have chosen \the [AM]. Say hello to your new friend."))
		qdel(src)

/obj/item/clothing/under/rank/security/camo/tee
	icon_state = "mout_open"

/obj/item/clothing/under/rank/security/camo/mout
	name = "urban battle dress"
	desc = "A rare T-pattern urban combat uniform. MOUT, Military Operations in Urban Terrain."
	icon_state = "mout"
	item_state = "mout"
	camo_type = /obj/item/clothing/under/rank/security/camo/mout
	camo_tee = /obj/item/clothing/under/rank/security/camo/mout/tee

/obj/item/clothing/under/rank/security/camo/mout/tee
	icon_state = "mout_open"

/obj/item/clothing/under/rank/security/camo/woodland
	name = "battle dress"
	desc = "A T-pattern combat uniform, the most common surplus in the galaxy."
	icon_state = "woodland"
	item_state = "woodland"
	camo_type = /obj/item/clothing/under/rank/security/camo/woodland
	camo_tee = /obj/item/clothing/under/rank/security/camo/woodland/tee

/obj/item/clothing/under/rank/security/camo/woodland/tee
	icon_state = "woodland_open"

/obj/item/clothing/under/rank/security/camo/woodland2
	name = "battle dress"
	desc = "A T-pattern combat uniform, the most common surplus in the galaxy. This one is a little more faded."
	icon_state = "woodland2"
	camo_type = /obj/item/clothing/under/rank/security/camo/woodland
	camo_tee = /obj/item/clothing/under/rank/security/camo/woodland/tee

/obj/item/clothing/under/rank/security/camo/woodland2/tee
	icon_state = "woodland2_open"


/obj/item/clothing/under/rank/security/camo/arid
	name = "battle dress"
	desc = "A T-pattern hot climate combat uniform, popular on New Rome."
	icon_state = "arid"
	item_state = "arid"
	camo_type = /obj/item/clothing/under/rank/security/camo/arid
	camo_tee = /obj/item/clothing/under/rank/security/camo/arid/tee

/obj/item/clothing/under/rank/security/camo/arid/tee
	icon_state = "arid_open"
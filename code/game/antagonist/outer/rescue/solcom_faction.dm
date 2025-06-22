#define WELCOME_SOLCOM "You are an Emergency Response Team operating as part of the regional Quick Response Force. The Solar Combinded Arms Mandate, SOLCOM requires the immediate response to SOS calls in your sector.<br>\
	<br>\
	A distress call has been received from a nearby logistics and research outpost. Establish contact and respond accordingly to the situation.<br>\
	<br>\
	Orbital dynamics limit the Destroyer's interception window. The Dropship can only return to the Destroyer during the interception, after that, you won't be able to get home."

/datum/faction/solcom
	id = FACTION_COMMANDO
	name = "Peacekeepers"
	antag = "soldier"
	antag_plural = "soldiers"
	welcome_text = WELCOME_SOLCOM

	hud_indicator = "mercenary"

	possible_antags = list(ROLE_COMMANDO)

	faction_invisible = FALSE

	var/objectives_num
	var/list/possible_objectives = list(
	/datum/objective/harm = 15,
	/datum/objective/steal = 55,
	/datum/objective/assassinate = 35,
	/datum/objective/abduct = 15)
	var/objective_quantity = 1

	//How long the mercenaries get to do their mission



/datum/faction/mercenary/create_objectives()
	objectives.Cut()
	pick_objectives(src, possible_objectives, objective_quantity)

	new /datum/objective/timed/merc(src)

	..()


/datum/faction/solcom/add_leader(var/datum/antagonist/member, var/announce = TRUE)
	.=..()
	if (.)
		//put the commander outfit on
		var/decl/hierarchy/outfit/O = outfit_by_type(/decl/hierarchy/outfit/job/ert/peacecommander)
		O.equip(member.owner.current, OUTFIT_ADJUSTMENT_NO_RESET)

		//The commander can speak english
		member.owner.current.add_language(LANGUAGE_COMMON)

		member.create_id("Sergeant")


/* Special inventory proc for mercenaries. Includes the content of their base and ship. So any loot that they haul
back to their ship counts for objectives.
This could potentially return a list of thousands of atoms, but thats fine. Its not as much work as it sounds
/datum/faction/solcom/get_inventory()
	var/list/contents = ..()
	var/list/search_areas = list(/area/shuttle/mercenary, /area/centcom/merc_base)
	for (var/a in search_areas)
		contents |= get_area_contents(a)

	return contents
*/
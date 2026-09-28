/datum/species/human
//	name = SPECIES_HUMAN
//	name_plural = "Humans"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	blurb = "Humanity in its broadest form, literally and figuratively.\
	The congealed mass of mass produced slaves and bio-Leninist dogmatic disgenics to form the castes of cattle and hedonist elites.\
	The best the Solar Conglomerate has to offer, the spessman of tomorrow, the Solar Human."
	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 17
	max_age = 110
	remains_type = /obj/item/remains/human

	name = SPECIES_HUMAN
	name_plural = "Solar Humans"
	icobase = 'icons/mob/human_races/solar/r_human.dmi'
	deform = 'icons/mob/human_races/r_def_human.dmi'
	damage_overlays = 'icons/mob/human_races/solar/dam_human.dmi'
	damage_mask = 'icons/mob/human_races/solar/dam_mask_human.dmi'
	blood_mask = 'icons/mob/human_races/solar/blood_human.dmi'
	perks = list(PERK_SOLAR)

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/datum/species/human/get_bodytype()
	return SPECIES_HUMAN
/*
/datum/species/human/solar
	name = SPECIES_HUMAN_SOLAR
	name_plural = "Solar Humans"
	icobase = 'icons/mob/human_races/solar/r_human.dmi'
	deform = 'icons/mob/human_races/r_def_human.dmi'
	damage_overlays = 'icons/mob/human_races/solar/dam_human.dmi'
	damage_mask = 'icons/mob/human_races/solar/dam_mask_human.dmi'
	blood_mask = 'icons/mob/human_races/solar/blood_human.dmi'
	perks = list(PERK_SOLAR)
*/
/datum/species/human/exile
	name = SPECIES_HUMAN_EXILE
	name_plural = "Human Exiles"
	blurb = "The Exiled remnants of civilizations purged from history. Hardy, unmodified genestock of spacers and refugees.\
	Carving out life on the absolute fringes of the Orion Spur, the Exiles are all that remain of humanity from before the forced, genocidal Unification.\
	Having origins from the Soveriegn Colonies and Misriah Pact, some Nations have remaining populations in the hundreds. Many peoples and cultures are extinct."
	icobase = 'icons/mob/human_races/exile/r_exile.dmi'
	deform = 'icons/mob/human_races/r_def_human.dmi'
	damage_overlays = 'icons/mob/human_races/exile/dam_exile.dmi'
	damage_mask = 'icons/mob/human_races/exile/dam_mask_exile.dmi'
	blood_mask = 'icons/mob/human_races/exile/blood_exile.dmi'
	perks = list(PERK_EXILE)

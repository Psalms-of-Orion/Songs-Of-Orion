/datum/perk/solar
	name = "Solar Human"
	icon_state = "venus"
	desc = "You are the progeny of Sol, the light of humanity in the darkness between the stars. \
	Your education and programming is the product of generations of progress and peak Pavlovian perfection. \
	Soft hands and soft bodies make room for time for the finer points of enlightenment, your physical limitations can be overcome with science, no?\
	You are Humanity, the spessman, the right side of history."
	var/stat_increase = 10

/datum/perk/solar/assign(mob/living/carbon/human/H)
	if(..())
		holder.stats.changeStat(STAT_MEC, stat_increase)
		holder.stats.changeStat(STAT_COG, stat_increase)
		holder.stats.changeStat(STAT_BIO, stat_increase)
		holder.stats.changeStat(STAT_ROB, -stat_increase)
		holder.stats.changeStat(STAT_TGH, -stat_increase)
		holder.stats.changeStat(STAT_VIG, -stat_increase)

/datum/perk/solar/remove()
	holder.stats.changeStat(STAT_MEC, -stat_increase)
	holder.stats.changeStat(STAT_COG, -stat_increase)
	holder.stats.changeStat(STAT_BIO, -stat_increase)
	holder.stats.changeStat(STAT_ROB, stat_increase)
	holder.stats.changeStat(STAT_TGH, stat_increase)
	holder.stats.changeStat(STAT_VIG, stat_increase)
	..()

/datum/perk/exile
	name = "Human Exile"
	icon_state = "prism"
	desc = "You are a lost son of Adam or daughter of Eve. \
	You are an Exile, descended from refugees from the Soveriegn Colonies and Misriah Pact star nations, outside in the cold away from the unholy glow of the United Solar Conglomerate. \
	Hard times make strong men, and being spared the indoctrination and genetic horrors inflicted on humanity makes you stronger by comparison. \
	As strongly traditional and highly practical people, Exile men are stronger than average, and women are vigilant caretakers."
	var/stat_increase = 10

/datum/perk/exile/assign(mob/living/carbon/human/H)
	if(..())
		holder.stats.changeStat(STAT_MEC, -stat_increase)
		holder.stats.changeStat(STAT_COG, -stat_increase)
		holder.stats.changeStat(STAT_BIO, -stat_increase)
		holder.stats.changeStat(STAT_ROB, stat_increase)
		holder.stats.changeStat(STAT_TGH, stat_increase)
		holder.stats.changeStat(STAT_VIG, stat_increase)

		if(holder.gender == FEMALE)
			holder.stats.changeStat(STAT_VIG, stat_increase)
			holder.stats.changeStat(STAT_ROB, -stat_increase)
			holder.stats.changeStat(STAT_TGH, -stat_increase)
			holder.stats.changeStat(STAT_BIO, stat_increase)

/datum/perk/exile/remove()
	holder.stats.changeStat(STAT_MEC, stat_increase)
	holder.stats.changeStat(STAT_COG, stat_increase)
	holder.stats.changeStat(STAT_BIO, stat_increase)
	holder.stats.changeStat(STAT_ROB, -stat_increase)
	holder.stats.changeStat(STAT_TGH, -stat_increase)
	holder.stats.changeStat(STAT_VIG, -stat_increase)

	if(holder.gender == FEMALE)
		holder.stats.changeStat(STAT_VIG, -stat_increase)
		holder.stats.changeStat(STAT_ROB, stat_increase)

	..()

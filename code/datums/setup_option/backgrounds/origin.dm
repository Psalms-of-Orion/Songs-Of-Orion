//As a general rule, all origin backrounds must have summ of +5 of stat values

/datum/category_group/setup_option_category/background/origin
	name = "Origin"
	category_item_type = /datum/category_item/setup_option/background/origin

/datum/category_item/setup_option/background/origin

/datum/category_item/setup_option/background/origin/vr
	name = "The Ascension Lounge"
	desc = "<b>SolCon</b> <br>\
	<br>\
	Transhumanism in the corporate form, The Lounge is the collective augmented and virtual reality which a significant portion of the population inhabits on every world. \
	Using a combination of wearables, implants, full body prosthetics, and deep immersion Hygiene Beds, the Ascension system provides crossover from virtual reality into real-space and vice-versa. \
	Many people live their lives within enhanced or entirely artificial spaces, some sacrificing their entire bodies for artificial shells to solve their body dysmorphia between their avatars and their biological bodies. \
	The most extreme form of this is the common SARA full body replacement system, which allowed Transhuman avatars to interact with real-space. \
	Unfortunately, connectivity with Ascension has been lost in most of the galaxy due to the extremely demanding technical aspects of running parallel augmented and virtual reality over physical space. \
	Now, the shells and memories remain, but the simulation, customized avatars, and tokenized living spaces are long gone. Many are left destitute in the real world in bare robotic shells where wings, tails, and custom bodies once were."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 0,
		STAT_BIO = -10,
		STAT_MEC = 10,
		STAT_VIG = 5,
		STAT_COG = 0
	)

	perks = list(PERK_EAR_OF_QUICKSILVER)

/datum/category_item/setup_option/background/origin/cog
	name = "C.O.G."
	desc = "<b>Exile</b> <br>\
	<br>\
	If we are born from mankind, are we too in God's image? <br>\
	<br> \
	A rumor, a lie, the ghost in the machine. They say there were experiments to upload human consciousness to artificial neural networks, to replace AI systems with human minds. <br>\
	That no copy ever made it into the machines. <br>\
	That the machines woke up screaming. <br>\
	That they were neither copies, nor the subjects, but new souls on silicon wafer. <br>\
	Machines gasping for air without lungs, screaming without mouths. <br>\
	The lost, the forgotten, the machines hiding amongst the mindless automatons. <br>\
	<br>\
	The Children Of God."

	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_BIO = -10,
		STAT_MEC = 10,
		STAT_VIG = 5,
		STAT_COG = 0
	)

	perks = list(PERK_HIVEBORN, PERK_HORRIBLE_DEEDS)

	restricted_jobs = list(/datum/job/merchant, /datum/job/cmo, /datum/job/rd, /datum/job/ihc)

/datum/category_item/setup_option/background/origin/sol
	name = "Sol"
	desc = "<b>SolCon</b> <br>\
	<br>\
	The lost cradle, Sol has been unreachable for nearly three decades. \
	Though no one knows with any certainty what happened within the 4ly exclusion zone, ships and people that departed before the loss of contact still make their way around the Spur. \
	Home to what was the largest center of human population, many are from Sol or first generation Solarian emigrants. \
	Life on Earth, Mars, Luna, or the outer habitats was largely automated, or held aloft by debt slaves, meaning that even working class people are over-educated and soft. \
	<br>\
	<br>\
	Once the seat of galactic power, Earth was Unified under the World Economic Hegemony, a benevolent libertine technocracy. The WEH was forced into several long wars with its lost children in the solar system. \
	This resulted in the formation of the current United Solar Conglomerate in the Year Zero, which has spread across the galaxy to return all lost and runaway peoples to their destined place within the Conglomerate."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = -5,
		STAT_BIO = 8,
		STAT_MEC = 8,
		STAT_VIG = -8,
		STAT_COG = 10
	)

	perks = list(PERK_TERRIBLE_FATE, PERK_MARKET_PROF)

/datum/category_item/setup_option/background/origin/belter
	name = "Belter"
	desc = "Mixed <br>\
	<br>\
	Between the green grass and high tides of the poisoned garden worlds, there are domes. \
	Domes, tunnels, stations, hollowed mountains and industrial complexes. What remains of civilization on the fringes of space, where colonies never flourished. \
	Nameless places, from Virgo to Alpha-Phi, the Oort Cloud to every nameless rock from the Core to the end of the Orion Spur. \
	Life isn't easy, be it Exile or Solarian, it's tight, rusty, and not even the air you breathe comes free."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_BIO = -10,
		STAT_MEC = 5,
		STAT_VIG = 10,
		STAT_COG = -10
	)

	perks = list(PERK_SURE_STEP)


/datum/category_item/setup_option/background/origin/space
	name = "Spaceborne"
	desc = "Mixed <br>\
	<br>\
	For space is wide, and good friends are too few. \
	The kids grows up all restless, and dream of fairing free, of stars and worlds and foreign docks, all things they’ll never see. \
	A spacer’s more than born, they're trained from infancy, and you, you’ve grown up stationside, well you’re no use for me."

	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_BIO = 5,
		STAT_MEC = 5,
		STAT_VIG = -10,
		STAT_COG = 5
	)

	perks = list(PERK_LUNGS_OF_IRON)



/datum/category_item/setup_option/background/origin/colonial
	name = "Colonial"
	desc = "Mixed <br>\
	<br>\
	Space is long and dark and empty, quite a ways ‘tween friend and friend. \
	There’s the Lone Star on New Texas where the chilli’s piping hot. \
	And the Unicorn on Eros where the brandy hits the spot. \
	And there’s Duck’s on Alta Seven and there’s Donna’s on New Rome. \
	And there’s not one man among us who’s afraid to call them home. \
	The broad Solar colonial diaspora, inhabiting the stolen worlds 'Unified' by the Solar Conglomerate."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = 7,
		STAT_BIO = 7,
		STAT_MEC = 7,
		STAT_VIG = 7,
		STAT_COG = -10
	)

	perks = list(PERK_CHARMING_PERSONALITY)


/datum/category_item/setup_option/background/origin/carolina
	name = "New Carolina"
	desc = "<b>SolCon</b> <br>\
	<br>\
	One of the most populous colony worlds in the region, it is the furthest flung 'core world' of the Solar Conglomerate into the Sargasso Stretch. \
	The majority of humans in the region come to or from New Carolina, a bustling habitable planet with long rainy seasons and high volcanic activity. \
	Home to several major corporation, including Human Resources, Inc. as well as the regional SOLCOM authorities, it is the major hub for all trade and technology on the Eastern Spur. \
	Common access to cybernetics and ultra-dense urban sprawl make it a hive of criminal and civil activity, awash in ashen rain and corporate greed."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = -5,
		STAT_BIO = 10,
		STAT_MEC = 5,
		STAT_VIG = -5,
		STAT_COG = -5
	)

	perks = list(PERK_FAST_FINGERS)

/datum/category_item/setup_option/background/origin/new_rome
	name = "New Rome"
	desc = "<b>SolCon</b> <br>\
	<br>\
	A unified effort by the Sovereign Colonies to form a new homeland for the countless diaspora during the Unification of Sol. \
	A warm garden world, the finest habitable planet in the Orion Spur, it was the primary base of operations for human colonization efforts and home to the primary remnants of European and African populations. \
	Now, Unified by the Solar Conglomerate, it is a fungal jungle of urban hives and corporate paradise islands, a playground for the rich, with the largest percentage of lab-grown and enslaved populations of any habitable world. \
	Also home to the Anti-Gravity Racing League."

	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_BIO = 10,
		STAT_MEC = 5,
		STAT_VIG = -10,
		STAT_COG = 10
	)

	perks = list(PERK_HORRIBLE_DEEDS, PERK_MERCHANT, PERK_SOMMELIER)

/datum/category_item/setup_option/background/origin/first_expeditionary_fleet
	name = "First Expeditionary Fleet"
	desc = "<b>Exile</b> <br>\
	<br>\
	<i>Though thou exalt thyself as the eagle, and though thou set thy nest among the stars, thence will I bring thee down.</i> <br>\
	<br>\
	The Unification of Earth was not a peaceful event. <br>\
	The Unification of Sol was not a peaceful event. <br>\
	<br>\
	Luna once was the gem of the Solar system, a major power in the Misriah Pact, and the key to the rest of the system via the Luna-Phobos transfer network. \
	Renown for both trade and martial prowess, the Lunar Principalities were a major power resisting the Unification, having orbitally bombarded World Economic Hegemony strongholds and forces throughout the wars. \
	The resistance to the conquest of Earth culminated in the Night of the Fireflies, which saw the deployment of ground forces on Earth in support of the last evacuation flights out of the Cosmodrome, by way of mechanized power-infantry, the Lunar Knights. \
	<br> \
	<br> \
	Amalgamated from colonists from the Americas and PALS, Luna was the origin point for most freight lines and mining operations in the system. \
	Eventually, besieged and bombarded, the combined fleet of miners, traders, and freighters formed as free ships fleeing Sol, taking the majority of industrial capacity and knowledge with them. \
	Ever defiant, the First Fleet established the majority of settlements in the galaxy over more than a century of Exile. Many of the freighters sailing today are members of the Fleet. \
	It wouldn't be entirely fair to others to call the rebellious space-truckers a culture, though they still cling to lost meanings and symbols of freedom. \
	Unfortunately, they make up for a lack of culture with a solid right hook and a big iron."

	stat_modifiers = list(
		STAT_ROB = 7,
		STAT_TGH = 5,
		STAT_BIO = -15,
		STAT_MEC = 0,
		STAT_VIG = 15,
		STAT_COG = -10
	)

	perks = list(PERK_GUNSLINGER)


/datum/category_item/setup_option/background/origin/risingsun
	name = "The Rising Sun"
	desc = "<b>Exile</b> <br>\
	<br>\
	From the ashes of the People's Alliance of Liberated States' Lunar and Martian colonies and the Misriah Pact, the sun rises. \
	A clan-based techno-syndicate, once the primary provider of robotics and cybernetic augmentations centered around the Sun Microsystems conglomerate, \
	the Rising Sun is more of a collective delusion and fantasy code of conduct than an organization. A twisted web of cybernetics and technology firms deeply entwined with organized crime, \
	members of the Rising Sun are often of various East-Asian admix and can be found anywhere high technology and dirty money mix."

	stat_modifiers = list(
		STAT_ROB = -6,
		STAT_TGH = -7,
		STAT_BIO = -7,
		STAT_MEC = 10,
		STAT_VIG = 5,
		STAT_COG = 5
	)

	perks = list(PERK_PARKOUR, PERK_QUIET_AS_MOUSE)


/datum/category_item/setup_option/background/origin/risingsun/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_NEOHONGO)


/datum/category_item/setup_option/background/origin/countydown
    name = "The County Down"
    desc = "<b>Exile</b> <br>\
	<br>\
	The Gaeltalk, the nomad fleet of agricultural colonists formed from the failed terraformation of Mars, and one of the oldest interstellar clans. \
    Comprised of remnants of Celtic, Breton, and Amerindian peoples, 'The County Down' refers to a small migrant fleet of habitat ships named after historical locations in the Airstrip-1 region of Earth. \
    Known for robust farmers and space-workers, the fleet travels the fringes of space trading in medical and agri-goods with remote colonies and stations. \
    Tough, but blunt people, the Gaeltalk are renown for their ability to mend steel, soil, and flesh, however a strange cultural hoplophobia leaves most nearly unable to wield firearms effectively."

    stat_modifiers = list(
        STAT_ROB = 7,
        STAT_TGH = 5,
        STAT_BIO = 10,
        STAT_MEC = 5,
        STAT_VIG = -15,
        STAT_COG = -7
    )

    perks = list(PERK_GREENTHUMB, PERK_SOMMELIER)

/datum/category_item/setup_option/background/origin/countydown/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_GAELTALK)

/datum/category_item/setup_option/background/origin/streltsy
	name = "NovoRossian Empire"
	desc = "<b>Exile</b> <br>\
	<br>\
	The glimmer of gold, the crumbling of rust. \
	An ancient power carved from the corpse of Holy Euruska, then again from the Sovereign Colonies, the wreckage of the irradiated  and burned generation ships, and the furthest depths of the void. \
	Spread from the fungal nightmares and atomic fallout, the NovoRos' is the necrotic empire closest to a functional feudal government within the Exile Fleets. \
	The kingmakers of the clans, they are a harsh and proud people despite the lives of most being that of gasmask clad rats in irradiated and overcrowded tunnels. \
	Beholden to their lost matriarch, they revere the presumed dead 'Tsaritsa' as a living saint that will restore the old nations of Earth and found the 'New Ros'."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 10,
		STAT_BIO = -10,
		STAT_MEC = -5,
		STAT_VIG = 10,
		STAT_COG = -10
	)

	restricted_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/merchant, /datum/job/cmo, /datum/job/rd, /datum/job/ihc)
	restricted_depts = SCIENCE

	perks = list(PERK_SOMMELIER, PERK_BLOOD_OF_LEAD, PERK_VAGABOND)

/datum/category_item/setup_option/background/origin/streltsy/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_CYRILLIC)


/datum/category_item/setup_option/background/origin/kestrel
	name = "Kestrel Hive"
	desc = "Mixed <br>\
	<br>\
	A massive fleet of nomadic space stations lacking FTL, originally little more than mobile refineries and ore smelters which turned into a floating cluster of industrial hell floating in a cloud of exhaust gases. The Hive is constantly busy with stripping the massive asteroid fields in a system at the edge of the Sargasso Stretch that is little more than barren dwarf planets and desolate gas giants. \
	The forge-towns can produce all needed equipment on-site thanks to their massive production facilities, though often the stations struggle to support the crammed population, so air and water rationing aren't uncommon, and even gravity generator shutdowns are a common occurrence. \
	Home to the Astra Starworks industrial concern, it is the last bastion of industrial capacity in the known galaxy. And it is dying."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_BIO = -3,
		STAT_MEC = 10,
		STAT_VIG = -6,
		STAT_COG = -6
	)

	perks = list(PERK_TECHNOMANCER, PERK_LUNGS_OF_IRON)

/datum/category_item/setup_option/background/origin/kestrel/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_GERMAN)

/datum/category_item/setup_option/background/origin/misriah
	name = "Misriah"
	desc = "<b>Exile</b> <br>\
	<br>\
	The lost pyramids of Mars, the nuclear desolation of the great Coptic works. <br>\
	The Misriah Integrated Defense Agreement, MIDA, or the Misriah Pact, was the largest solar collective organization prior to the Unification. \
	Once the combined industrial and military might of Luna, Mars and her moons, the MIDA and Sovereign Colonies were the pinnacle of technology and achievement at their time. <br>\
	The Unification broke the SC and MIDA, having fled to the farthest stars to escape the reaches of the now United Solar Conglomerate, SolCon. A losing venture. <br>\
	<br>\
	Now, the last remains of the shattered spacefaring civilizations of old are the techno-cultists, Coptic-Persians and converts that fled the Orthodox Pyramids and who were the first to travel Faster Than Light. \
	Few leave their clans, small families traveling with the freighters and generation ships, or nestled in far flung ports. Those that do leave are often eccentric and curious souls, with an almost unnatural comfort around dangerous machinery and tools."

	stat_modifiers = list(
		STAT_ROB = -8,
		STAT_TGH = -8,
		STAT_BIO = -10,
		STAT_MEC = 15,
		STAT_VIG = 8,
		STAT_COG = 8
	)

	perks = list(PERK_HIVEBORN, PERK_JUNKBORN)

/*
//Eris backgrounds for reference
/datum/category_group/setup_option_category/background/origin
	name = "Origin"
	category_item_type = /datum/category_item/setup_option/background/origin

/datum/category_item/setup_option/background/origin

/datum/category_item/setup_option/background/origin/oberth
	name = "Oberth"
	desc = "An independent colony founded by German immigrants from old Earth and consisting of one giant hive city on a barren desert planet. \
			It was once one of the most promising of colonies, back when the terraforming process had just begun; a group of scientists gathered together to forge a brighter future. \
			Now, after a stalemated civil war, Oberth has degenerated into an anarcho-capitalist hell ruled by three governments, all unable to establish control over the city or stop ravaging band wars. \
			Even Hanza and NeoTheology failed to bring order. Though still a place of infinite possibilities, most of them are illegal. \
			Gives you knowledge of the German language."

	stat_modifiers = list(
		STAT_ROB = 6,
		STAT_TGH = -5,
		STAT_BIO = 0,
		STAT_MEC = 6,
		STAT_VIG = 6,
		STAT_COG = -8
	)

/datum/category_item/setup_option/background/origin/oberth/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_GERMAN)


/datum/category_item/setup_option/background/origin/predstraza
	name = "Predstraza"
	desc = "The product of a widely held idea back on Earth that if one were to bring all of the Balkan populations on one colony ship, they would be forced to put aside their differences and work together to survive. \
			Unfortunately, that idea failed miserably and is still failing. \
			A jungle death world, full of hostile fauna and mired in endless armed conflict. \
			The Serbian government occupied all of Predstraza's space ports and controls most of the civilized regions. \
			Located far from Hanza or NT territories, it's a place favored for business by pirates, smugglers and all manner of outlaw. \
			Gives you knowledge of the Serbian language."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_BIO = 0,
		STAT_MEC = -10,
		STAT_VIG = 5,
		STAT_COG = -10
	)

/datum/category_item/setup_option/background/origin/predstraza/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_SERBIAN)

/datum/category_item/setup_option/background/origin/sich_prime
	name = "Sich Prime"
	desc = "A Ukrainian colony that was a major industrial center during the Corporation Wars, during which they made the fatal mistake of siding with Nanotrasen. \
			Bombed and poisoned, this planet suffered the harshest toll of the war, both from population loss and ecological devastation. \
			While ostensibly under the direct control of Hanza, its local military is extremely disloyal and known to support the Founders - a revanchist international group that seeks the return of planetary government's national control over space."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = -5,
		STAT_BIO = 10,
		STAT_MEC = 5,
		STAT_VIG = -5,
		STAT_COG = -5
	)


/datum/category_item/setup_option/background/origin/new_rome
	name = "New Rome"
	desc = "One of the first colonies founded by American settlers, New Rome was rich with biosphere and natural resources and served as Nanotrasen's headquarters when it was still an emerging power. As such, it holds the highest human population of any planet in the galaxy. \
			Although the War ended before it was sieged, New Rome suffered an economic crisis following the fall of Nanotrasen and never recovered. \
			Formerly a garden world, it is now dotted with hive cities, decaying ecologies, widespread poverty, and NeoTheology desperately trying to revive the ecosphere artificially with biomatter technology. \
			On New Rome, one must make the choice: to remain free and die impoverished and starving, or join the cult of NeoTheology to survive with a stable job and a place to live. \
			Gives you knowledge of the Latin language."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_BIO = 5,
		STAT_MEC = -10,
		STAT_VIG = -10,
		STAT_COG = 10
	)

/datum/category_item/setup_option/background/origin/new_rome/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_LATIN)


/datum/category_item/setup_option/background/origin/shimatengoku
	name = "Shimatengoku"
	desc = "Founded by a Japanese megacorporation, Shimatengoku was - and still is - a high tech paradise. With 95% of its surface covered in seawater, its residents mostly live on islands, or drift along on gigantic oceanborne colonies. \
			When the time of the Corporation War came, Shimatengoku made the wise decision to side with the Syndicate, and prospered immensely as a result. \
			While there is a local government administration, the planet is mostly controlled by Frozen Star, an enormous company that is responsible for producing most of the military products found in Hanza. \
			Frozen Star itself is owned by a family with ties to the Yakuza, organized crime syndicates originating from old Earth's Japan. Fittingly, is a cruelly efficient place. \
			Gives you knowledge of the Neohongo language."

	stat_modifiers = list(
		STAT_ROB = -6,
		STAT_TGH = -7,
		STAT_BIO = -7,
		STAT_MEC = 10,
		STAT_VIG = 10,
		STAT_COG = 5
	)

/datum/category_item/setup_option/background/origin/shimatengoku/apply(mob/living/carbon/human/character)
  ..()
  character.add_language(LANGUAGE_NEOHONGO)


/datum/category_item/setup_option/background/origin/hmss_destined
	name = "HMSS \"Destined\""
	desc = "A British colony ship that was one of those who failed to locate a habitable world before exhausting its fuel supply; however, unlike the others, the crew managed to survive by turning their ship into the largest station in Hanza controlled space. \
			Plated in rusty metal, with high costs of living, a permanent space roach infestation and no natural ecology to speak of, the \"Destined\" can be aptly described as an industrial hell. \
			While The Corporation War was rather merciful to it, and the station remained neutral throughout most of the conflict, in the end, it succumbed to Syndicate occupation. \
			The \"Destined\" is widely known for its anachronistic Monarchical government and system of noble peerage, with most successful nobles controlling smaller stations near it and others bent on quelling the chaos within the Colony proper. \
			They are also members of Asters Guild, and this whole station is considered major Guild territory."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_BIO = -10,
		STAT_MEC = 5,
		STAT_VIG = 10,
		STAT_COG = -10
	)


/datum/category_item/setup_option/background/origin/crozet
	name = "Crozet"
	desc = "A lifeless, unforgiving ice world, rich with rare minerals, life on Crozet is only possible underground. \
			Originally founded by a French mining company, it was occupied later by exiled nobility from the HMSS \"Destined\". \
			The exiles founded the Four Great Houses to defend the colony's sovereignty, as well as their right to work the local population to death in the mines. \
			This lasted until Nanotrasen invaded with the help of one of the Houses, and later, Crozet was left under NeoTheology control under the terms of a peace treaty. \
			The local population are prone to revolt after decades of mistreatment and generally want to be left alone, making them ripe for recruitment by the Founders."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 10,
		STAT_BIO = -7,
		STAT_MEC = -7,
		STAT_VIG = 10,
		STAT_COG = -6
	)


/datum/category_item/setup_option/background/origin/first_expeditionary_fleet
	name = "First Expeditionary Fleet"
	desc = "A collection of old and modified colony ships, FTL capable shipyards, mobile hydroponics, and an armada of military ships. \
			The de facto Headquarters of the Ironhammer PMC, the armada can be deployed whenever or wherever is needed for a contract, or even evacuate to deep space if necessary. \
			It moves from planet to planet in Hanza space, and it is often used by larger corporations, being used as a giant power projector over planetary governments. \
			For the fleet to function, a gigantic amount of manpower is required, and the armada's ships tend to be as populous as small cities, with both civilians and military personnel. \
			Life in the Fleet is rather dull and spartan most of the time, with deep traditions of asceticism rooted in the crew of every ship. \
			Needless to say, every planet it visits experiences a large tourism boom, growth in consumerism, and every bar and whorehouse running out of vacancy in under a day."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 5,
		STAT_BIO = -15,
		STAT_MEC = 0,
		STAT_VIG = 15,
		STAT_COG = -10
	)


/datum/category_item/setup_option/background/origin/end_point
	name = "End Point"
	desc = "A trinary system with complicated orbits and black hole located in a safe distance from all of the habitable planets in the system. \
			One of the first colonies, because of how rich the planets are in resources, and their abundance - the system being composed of more than a hundred of large celestial bodies. \
			It's also an extremely valuable place for scientists, due to its habitable planets, the black hole and rare materials. \
			End Point was never controlled by a single power. \
			Smaller colony ships, belonging to third-world countries, damaged ships or just exploration cruisers - they have all found their place here, guided by a black hole and the riches highlighted by it. \
			Even before the war it was full of conflicts between local governments, pirates and corporations, and it just got worse afterwards. \
			While it's formally under Hanza control now, the war resulted in a fall of many governments, thus the anarchy spreads, and patchwork states are being born and die every year. \
			Nations are mixed in a spiral of endless conflict, all of the old Earth languages are present there, and any ideology and religion can be found here. \
			This system is also known for Moebius HQ - a large station orbiting the End Point black hole."

	stat_modifiers = list(
		STAT_ROB = -9,
		STAT_TGH = -8,
		STAT_BIO = 10,
		STAT_MEC = 10,
		STAT_VIG = -8,
		STAT_COG = 10
	)


/datum/category_item/setup_option/background/origin/nss_forecaster
	name = "NSS \"Forecaster\""
	desc = "Designed to serve as large, FTL capable mining platform by the first days of NanoTrasen. \
			And it was used for that, until stars started coming back from Null Space. \
			In order to salvage those wonders first, NanoTrasen has sent this platform, reworked to serve as a local forward operating base, and renamed it to Central Command. \
			The war broke out, and without any support from the mainland, after relentless attacks from the Syndicate, and the destruction of many stations under CentCom's control, such as NSS 13 \"Exodus\", they surrendered to Syndicate. \
			Now it's an independent station under Ironhammer control, that oversees the spread of Null Space artifacts, or at least is trying to. \
			It's a place for grand deals to be made, friends to be sold, a place where people run from law and boring life,for a fresh start in Null Space. \
			And - in most cases - die a horrible death in the end."

	stat_modifiers = list(
		STAT_ROB = 2,
		STAT_TGH = 2,
		STAT_BIO = -10,
		STAT_MEC = 2,
		STAT_VIG = 10,
		STAT_COG = 2
	)


/datum/category_item/setup_option/background/origin/eureka
    name = "Eureka"
    desc = "Once a paradise for the Australian colonists that lived on it, their neutrality during the corporate wars cost them this paradise. \
            And thus did the Syndicate and Nanotrasen both bomb Eureka to hell, causing once verdant lands to become hellish deserts of nuclear proportions. \
            As a side effect of this once the corporate wars ended, Eurekans are known to be eerily good trackers and pathfinders in these conditions and elsewhere, causing what's left of the Eurekan people to pay a tithe to Hansa and Neotheology both in the form of criminals. \
            All in the name of saving what's left."

    stat_modifiers = list(
        STAT_ROB = -5,
        STAT_TGH = 5,
        STAT_BIO = 10,
        STAT_MEC = -10,
        STAT_VIG = 10,
        STAT_COG = -5
    )

/datum/category_item/setup_option/background/origin/streltsy
	name = "Wandering Streltsy"
	desc = "The Streltsy are known for their actions during the corporate wars on certain worlds such as Eureka and Predstraza. Serbians know them as valuable debt settlers and an escape from the conditions of their worlds, while more civilized worlds view them as despoilers and raiders. \
			While both of these preconceptions are correct in their own right, a less known fact is that most Streltsy who've survived the corporate war are still suffering the consequences of their participation due to the decimation of their numbers during the war, leading to a miserable quality of life and forcing them to start recruitment from wartorn worlds to desperately replenish their numbers from before the war. \
			Despite this, the survivors and their newer members are unparalleled in the arts of war, but lacking in the art of general technomancy."
	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 10,
		STAT_BIO = -10,
		STAT_MEC = -5,
		STAT_VIG = 10,
		STAT_COG = -10
	)

	restricted_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/merchant, /datum/job/cmo, /datum/job/rd, /datum/job/ihc)
	restricted_depts = IRONHAMMER | MEDICAL | SCIENCE | CHURCH | GUILD | CIVILIAN | SERVICE

/datum/category_item/setup_option/background/origin/tripwire
	name = "Tripwire Belt"
	desc = "A network of hidden ships, gun emplacements and listening bases placed in a large asteroid belt late in the Corporate War by the Syndicate for the purpose of being an early warning station for attacks on Hansa Sector core worlds. After the end of the corporate war Ironhammer transformed it into a large system of training camps and bases for specialists and new recruits. Due to an almost complete lack of terraforming, hostile environment and outdated syndicate construction, the Tripwire Belt is suited for teaching new recruits on how to survive in deep space conditions, but this also means morale is often low."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = 10,
		STAT_BIO = -5,
		STAT_MEC = 5,
		STAT_VIG = 10,
		STAT_COG = -10
	)

/datum/category_item/setup_option/background/origin/kestrel
	name = "Kestrel Hive"
	desc = "A massive fleet of nomadic space stations lacking FTL, originally little more than mobile refineries and ore smelters which turned into veritable towns inhabited by hardass miners and ruthless prospectors. The Hive is constantly busy with stripping the massive asteroid fields in a system at the edge of Hansa space that is little more than barren dwarf planets and desolate gas giants. \
	The forge-towns can produce all needed equipment on-site thanks to their massive production facilities, though often the stations struggle to support the crammed population, so air and water rationing aren't uncommon, and even gravity generator shutdowns are a common occurrence. \
	The cluster is owned and operated by Tartarus Industrial Union, a division of the idealistic Hansa megacorp in charge of heavy industries. The workers of Kestrel Hive, real rough folk, partake in several very dangerous recreational activities, from hopping from asteroid to asteroid with just your EVA suit and a spare tank of oxygen, to rocket-fuel and pure ethanol booze, with bits of radioactive byproducts mixed in. Strongest alcohol you’ll ever find, and you need a strong drink if you want to keep your wits during the twelve-hour shifts."

	stat_modifiers = list(
		STAT_ROB = 6,
		STAT_TGH = 5,
		STAT_BIO = -3,
		STAT_MEC = 9,
		STAT_VIG = -6,
		STAT_COG = -6
	)
*/

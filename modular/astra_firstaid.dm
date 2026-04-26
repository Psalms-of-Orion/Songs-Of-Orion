/obj/item/storage/hcases/med/astra
	name = "first aid kit"
	icon = 'modular/icons/astra_med.dmi'
	desc = "A ruggedized case for holding medical essentials."
	description_info = "Alt+click to open and close."
	icon_state = "hcase_fak"
	matter = list(MATERIAL_STEEL = 20)
	spawn_blacklisted = FALSE
	rarity_value = 60
	spawn_tags = SPAWN_TAG_FIRSTAID

	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/scanner/health,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/glass/bottle,
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/syringe,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves,
		/obj/item/reagent_containers/hypospray,
		/obj/item/bodybag,
		/obj/item/clothing/glasses/hud/health
		)

/obj/item/storage/hcases/med/astra/regular
	icon_state = "hcase_wh"
	rarity_value = 10
	prespawned_content_amount = 2
	prespawned_content_type = /obj/item/stack/medical/bruise

/obj/item/storage/hcases/med/astra/regular/populate_contents()
	icon_state = pick("hcase_wh","hcase_hr")
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/reagent_containers/hypospray/autoinjector(src)
	new /obj/item/device/scanner/health(src)



/obj/item/storage/hcases/med/astra/adv
	name = "first aid kit"
	desc = "Ruggedized case filled with supplies for shock-trauma."
	rarity_value = 30
	prespawned_content_amount = 2
	prespawned_content_type = /obj/item/stack/medical/gauze/hemo

/obj/item/storage/hcases/med/astra/adv/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/stack/medical/splint(src)
	new /obj/item/reagent_containers/syringe/inaprovaline(src)
	new /obj/item/device/scanner/health(src)
	new /obj/item/clothing/gloves/latex(src)

/obj/item/storage/hcases/med/astra/combat
	name = "combat medical kit"
	desc = "Contains advanced medical treatments."
	icon_state = "hcase_mil"
	item_state = "firstaid-advanced"
	rarity_value = 100
	prespawned_content_amount = 1
	prespawned_content_type = /obj/item/stack/medical/splint

/obj/item/storage/hcases/med/astra/combat/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealbrute(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealbrute(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealbrute(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealburn(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/quickhealburn(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/antitoxin(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/antitoxin(src)
	new /obj/item/storage/pill_bottle/tramadol(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/stack/medical/gauze/hemo(src)

/obj/item/storage/hcases/med/astra/rad
	name = "radiation exposure kit"
	icon_state = "hcase_rad"
	desc = "Ruggedized case filled with supplies for radiological events."
	rarity_value = 30
	prespawned_content_amount = 2
	prespawned_content_type = /obj/item/stack/medical/gauze

/obj/item/storage/hcases/med/astra/rad/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/storage/pill_bottle/hyronalin(src)
	new /obj/item/storage/pill_bottle/kelotane(src)
	new /obj/item/device/scanner/health(src)
	new /obj/item/clothing/gloves/latex(src)


/obj/item/reagent_containers/pill/hyronalin
	name = "Anti-radiation pill"
	desc = "Used to treat radiation exposure."
	icon_state = "pill_njoy_green"
	preloaded_reagents = list("hyronalin" = 10)


/obj/item/storage/pill_bottle/hyronalin
	name = "bottle of radiation pills"
	desc = "Contains pills used to contain radiation exposure."
	prespawned_content_type = /obj/item/reagent_containers/pill/hyronalin
	rarity_value = 20


/obj/item/storage/hcases/med/astra/surgery
	name = "surgery kit"
	desc = "Contains tools for surgery. Has precise foam fitting for safe transport."
	icon_state = "hcase_surgical"
	item_state = "firstaid-surgeon"
	rarity_value = 90
	can_hold = list(
		/obj/item/tool/bonesetter,
		/obj/item/tool/cautery,
		/obj/item/tool/saw,
		/obj/item/tool/hemostat,
		/obj/item/tool/retractor,
		/obj/item/tool/scalpel,
		/obj/item/tool/surgicaldrill,
		/obj/item/device/scanner,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/tool/tape_roll
		)

/obj/item/storage/hcases/med/astra/surgery/populate_contents()
	new /obj/item/tool/bonesetter(src)
	new /obj/item/tool/cautery(src)
	new /obj/item/tool/saw/circular(src)
	new /obj/item/tool/hemostat(src)
	new /obj/item/tool/retractor(src)
	new /obj/item/tool/scalpel(src)
	new /obj/item/tool/surgicaldrill(src)
	new /obj/item/tool/tape_roll/fiber/medical(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	make_exact_fit()

/obj/item/storage/hcases/med/astra/surgery/contractor
	spawn_blacklisted = TRUE

/obj/item/storage/hcases/med/astra/surgery/contractor/populate_contents()
	new /obj/item/tool/bonesetter(src)
	new /obj/item/tool/cautery(src)
	new /obj/item/tool/saw/circular/advanced(src)
	new /obj/item/tool/hemostat(src)
	new /obj/item/tool/retractor(src)
	new /obj/item/tool/scalpel/advanced(src)
	new /obj/item/tool/surgicaldrill(src)
	new /obj/item/tool/tape_roll/fiber/medical(src)
	new /obj/item/device/scanner/health(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/storage/pill_bottle/oxycodone(src)
	new /obj/item/storage/pill_bottle/prosurgeon(src)
	make_exact_fit()

//Cardboard boxes with medical supplies, to make FAKs less common.
/obj/item/storage/box/firstaid
	name = "First Aid"
	desc = "This box contains medical supplies."
	illustration = "fak"
	spawn_blacklisted = FALSE
	rarity_value = 60
	spawn_tags = SPAWN_TAG_FIRSTAID
	bad_type = /obj/item/storage/box/firstaid
	w_class = ITEM_SIZE_BULKY

/obj/item/storage/box/firstaid/regular
	name = "first aid box"
	desc = "A box of basic medical supplies."
	rarity_value = 10
	prespawned_content_amount = 3
	prespawned_content_type = /obj/item/stack/medical/bruise

/obj/item/storage/box/firstaid/regular/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/gauze(src)

/obj/item/storage/box/firstaid/fire
	illustration = "burn"
	name = "burn aid box"
	desc = "A box of medical supplies for burn treatment."
	rarity_value = 15
	prespawned_content_amount = 2
	prespawned_content_type = /obj/item/stack/medical/gauze

/obj/item/storage/box/firstaid/fire/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/storage/pill_bottle/kelotane(src)
	new /obj/item/stack/medical/burn(src)


/obj/item/storage/box/firstaid/tox
	illustration = "tox"
	name = "toxin aid kit"
	desc = "A box of medical supplies for toxin exposure treatment."
	rarity_value = 20
	prespawned_content_amount = 1
	prespawned_content_type = /obj/item/stack/medical/gauze

/obj/item/storage/box/firstaid/tox/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/storage/pill_bottle/antitox(src)
	new /obj/item/storage/pill_bottle/carbon(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/soap/nanotrasen(src)

/obj/item/storage/box/firstaid/adv
	illustration = "brute"
	name = "shock trauma kit"
	desc = "A box of medical supplies for toxin exposure treatment."
	rarity_value = 30
	prespawned_content_amount = 3
	prespawned_content_type = /obj/item/stack/medical/gauze/hemo

/obj/item/storage/box/firstaid/adv/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/burn(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/stack/medical/bruise/advanced(src)
	new /obj/item/stack/medical/splint(src)


/obj/item/storage/box/firstaid/oxy
	illustration = "O2"
	name = "oxygen deprivation kit"
	desc = "A box of medical supplies for oxygen deprivation treatment."
	rarity_value = 20
	prespawned_content_amount = 1
	prespawned_content_type = /obj/item/stack/medical/bruise/advanced

/obj/item/storage/box/firstaid/oxy/populate_contents()
	for(var/i in 1 to prespawned_content_amount)
		new prespawned_content_type(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/reagent_containers/hypospray/autoinjector(src)
	new /obj/item/storage/pill_bottle/dexalin(src)

/obj/item/storage/pill_bottle/dexalin
	name = "bottle of dexalin pills"
	desc = "Contains pills used to treat oxygen-loss."
	prespawned_content_type = /obj/item/reagent_containers/pill/dexalin
	rarity_value = 20

/decl/hierarchy/outfit/job
	name = "Standard Gear"
	hierarchy_type = /decl/hierarchy/outfit/job
	uniform = /obj/item/clothing/under/color/grey
	shoes = /obj/item/clothing/shoes/color/black
	id_slot = slot_wear_id
	l_ear = null
	id_type = /obj/item/card/id
	pda_slot = slot_belt
	flags = OUTFIT_HAS_BACKPACK

/decl/hierarchy/outfit/job/equip_id(mob/living/carbon/human/H)
	var/obj/item/card/id/C = ..()
	if(H.mind)
		if(H.mind.initial_account)
			C.associated_account_number = H.mind.initial_account.account_number
		if(H.mind.initial_email_login)
			C.associated_email_login = H.mind.initial_email_login.Copy()
	return C

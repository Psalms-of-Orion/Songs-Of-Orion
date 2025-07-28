
/obj/item/ammo_kit
	name = "scrap ammo kit"
	desc = "A somewhat jank looking crafting kit. It has a can of single-use tools, cheap pliers and a box of bullet making materials."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "ammo_kit-1"
	flags = CONDUCT
	throwforce = 1
	w_class = ITEM_SIZE_SMALL
	spawn_tags = SPAWN_TAG_AMMO_COMMON


/obj/item/ammo_kit/Initialize()
	. = ..()
	icon_state = "ammo_kit-[rand(1,5)]"


/obj/item/ammo_kit/attack_self(mob/user)
	var/list/items_to_spawn = make_scrap_ammo(user, src)
	if(items_to_spawn && items_to_spawn.len)
		if(do_mob(user, src, 10 SECONDS))
			var/location = get_turf(src)
			for(var/i in items_to_spawn)
				var/item_type = items_to_spawn[i]
				new item_type(location)
			qdel(src)


// Typeless so it could be reused in crafting_station.dm
/proc/make_scrap_ammo(mob/living/user, obj/source, extra_material_points = 0)
	if(!istype(user))
		return

	var/material_points = 15 + extra_material_points // 10 steel and 5 cardboard

	if(user.stats)
		switch(user.stats.getStat(STAT_MEC))
			if(STAT_LEVEL_BASIC to STAT_LEVEL_ADEPT)
				material_points += 3
			if(STAT_LEVEL_ADEPT to STAT_LEVEL_EXPERT)
				material_points += 6
			if(STAT_LEVEL_EXPERT to STAT_LEVEL_PROF)
				material_points += 9
			if(STAT_LEVEL_PROF to STAT_LEVEL_GODLIKE)
				material_points += 12
			if(STAT_LEVEL_GODLIKE to INFINITY)
				material_points += 15
		if(user.stats.getPerk(/datum/perk/oddity/gunsmith))
			material_points += 15

	var/list/array = list(
		CAL_SRIFLE = list(
			"carbine ammo pile (10 ammo, 3 points)" = list(3, /obj/item/ammo_casing/srifle/scrap/prespawned),
			"carbine ammo strip (5 ammo, 1 point)" = list(1, /obj/item/ammo_magazine/slsrifle/scrap),
			"carbine ammo speedloader (8 ammo, 3 points)" = list(3, /obj/item/ammo_magazine/slsrifle_rev/scrap),
			"carbine standard magazine (empty, 25 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/srifle/empty),
			"carbine extended magazine (empty, 35 ammo, 7 points)" = list(7, /obj/item/ammo_magazine/srifle/long/empty),
			"carbine drum magazine (empty, 60 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/srifle/drum/empty),
			"carbine ammo box (50 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/srifle_small/scrap)),
		CAL_CLRIFLE = list(
			"caseless ammo pile (10 ammo, 3 points)" = list(3, /obj/item/ammo_casing/clrifle/scrap/prespawned),
			"caseless ammo strip (5 ammo, 1 point)" = list(1, /obj/item/ammo_magazine/slclrifle/scrap),
			"caseless pistol magazine (empty, 10 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/cspistol/empty),
			"caseless standard magazine (empty, 30 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/ihclrifle/empty),
			"caseless ammo box (60 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/clrifle_small/scrap)),
		CAL_LRIFLE = list(
			"rifle ammo pile (10 ammo, 3 points)" = list(3, /obj/item/ammo_casing/lrifle/scrap/prespawned),
			"rifle ammo strip (5 ammo, 1 point)" = list(1, /obj/item/ammo_magazine/sllrifle/scrap),
			"rifle standard magazine (empty, 30 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/lrifle/empty),
			"rifle drum magazine (empty, 45 ammo, 10 points)" = list(10, /obj/item/ammo_magazine/lrifle/drum/empty),
			"rifle ammo box (60 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/lrifle_small/scrap)),
		CAL_PISTOL = list(
			"pistol caliber ammo pile (15 ammo, 5 points)" = list(5, /obj/item/ammo_casing/pistol/scrap/prespawned),
			"pistol caliber speedloader (6 ammo, 1 point)" = list(1, /obj/item/ammo_magazine/slpistol/scrap),
			"pistol caliber standard magazine (empty, 10 ammo, 3 points)" = list(3, /obj/item/ammo_magazine/pistol/empty),
			"pistol caliber extended magazine (empty, 16 ammo, 10 points)" = list(10, /obj/item/ammo_magazine/hpistol/empty),
			"pistol caliber SMG magazine (empty, 35 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/smg/empty),
			"pistol caliber ammo box (70 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/pistol/scrap)),
		CAL_MAGNUM = list(
			"magnum ammo pile (10 ammo, 3 points)" = list(3, /obj/item/ammo_casing/magnum/scrap/prespawned),
			"magnum speedloader (6 ammo, 3 points)" = list(3, /obj/item/ammo_magazine/slmagnum/scrap),
			"magnum standard magazine (empty, 10 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/magnum/empty),
			"magnum SMG magazine (empty, 25 ammo, 7 points)" = list(7, /obj/item/ammo_magazine/msmg/empty),
			"magnum ammo box (50 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/magnum/scrap)),
		CAL_SHOTGUN = list(
			"shotgun slug pile (5 ammo, 3 points)" = list(3, /obj/item/ammo_casing/shotgun/scrap/prespawned),
			"shotgun buckshot pile (5 ammo, 3 points)" = list(3, /obj/item/ammo_casing/shotgun/pellet/scrap/prespawned),
			"shotgun beanbag pile (5 ammo, 3 points)" = list(3, /obj/item/ammo_casing/shotgun/beanbag/scrap/prespawned),
			"shotgun magazine (empty, 8 ammo, 5 points)" = list(5, /obj/item/ammo_magazine/m12/short/empty),
			"shotgun drum (empty, 16 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/m12/empty),
			"shotgun slug packet (40 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/shotgun_small/scrap),
			"shotgun buckshot packet (40 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/shotgun_small/pellet/scrap),
			"shotgun beanbag packet (40 ammo, 15 points)" = list(15, /obj/item/ammo_magazine/ammobox/shotgun_small/beanbag/scrap)),
			"shotgun slug box (160 ammo, 30 points)" = list(25, /obj/item/ammo_magazine/ammobox/shotgun/scrap),
			"shotgun buckshot box (160 ammo, 30 points)" = list(25, /obj/item/ammo_magazine/ammobox/shotgun/pellet/scrap),
			"shotgun beanbag box (160 ammo, 30 points)" = list(25, /obj/item/ammo_magazine/ammobox/shotgun/beanbag/scrap),
		CAL_ANTIM = list(
			"AMR ammo pile (5 ammo, 5 points)" = list(5, /obj/item/ammo_casing/antim/scrap/prespawned),
			"AMR ammo box (30 ammo, 20 points)" = list(20, /obj/item/ammo_magazine/ammobox/antim/scrap)))

	var/list/items_to_spawn = list()
	var/user_is_choosing = TRUE

	while(user_is_choosing)
		var/items_to_spawn_string = items_to_spawn.len ? "\n" + jointext(items_to_spawn, "\n") : "None"
		var/action = alert(user, "Picked items: [items_to_spawn_string]", "Material points: [material_points]", "Pick an item", "Craft picked", "Cancel")
		switch(action)
			if("Pick an item")
				var/caliber_of_choice = input(user, "Choose a caliber", "Material points: [material_points]") as null|anything in array
				if(caliber_of_choice)
					var/craft = input(user, "Choose a craft", "Material points: [material_points]") as null|anything in array[caliber_of_choice]
					if(craft)
						if(material_points >= array[caliber_of_choice][craft][1])
							material_points -= array[caliber_of_choice][craft][1]
							items_to_spawn.Add(craft)
							items_to_spawn[craft] = array[caliber_of_choice][craft][2]
						else
							to_chat(user, SPAN_NOTICE("Not enough materials."))
							continue

			if("Craft picked")
				if(!items_to_spawn.len)
					if(alert(user, "No items picked. Abort crafting?", "Material points: [material_points]", "Yes", "No, turn back") != "No, turn back")
						user_is_choosing = FALSE
				else
					if(material_points)
						if(alert(user, "Remaining material points would be wasted. Craft anyway?", "Material points: [material_points]", "Yes", "No, turn back") == "No, turn back")
							continue

					if(!QDELETED(source) && in_range(source, user))
						return items_to_spawn
			else
				user_is_choosing = FALSE

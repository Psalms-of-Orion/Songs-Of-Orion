/obj/structure/closet/astra
	name = "closet"
	desc = "A basic storage unit."
	icon = 'modular/icons/astra_closet.dmi'
	icon_state = "generic"
	anchored = TRUE

/obj/structure/closet/secure_closet/astra
	name = "secure locker"
	desc = "A card-locked storage unit."
	icon = 'modular/icons/astra_closet.dmi'
	icon_state = "secure"
	anchored = TRUE

/obj/structure/closet/secure_closet/reinforced/astra
	icon = 'modular/icons/astra_closet.dmi'
	desc = "Wood paneling hiding plasteel armor plating, classy."
	icon_state = "reinforced"
	icon_lock = "reinforced"
	health = 400
	anchored = TRUE
/obj/structure/closet/secure_closet/personal/astra
	name = "personal closet"
	desc = "A secure locker for personnel."
	icon_state = "generic"
	icon = 'modular/icons/astra_closet.dmi'
	anchored = TRUE
/obj/structure/closet/astra/cabinet
	name = "cabinet"
	desc = "A faux wood paneled storage solution, classy."
	icon_state = "cabinet"
	anchored = TRUE

/obj/structure/closet/secure_closet/personal/astra/cabinet
	name = "personal closet"
	desc = "A locking faux wood paneled closet for personal belongings."
	icon_state = "cabinet"
	icon_lock = null
	anchored = TRUE
/obj/structure/closet/secure_closet/reinforced/astra/locker
	icon = 'modular/icons/astra_closet.dmi'
	name = "secure locker"
	desc = "An armored locker."
	icon_state = "locker"
	icon_lock = null
	health = 400
	anchored = TRUE

//Colors

/obj/structure/closet/astra/wardrobe
	name = "mixed wardrobe"
	desc = "There HAS to be something to wear in here."
	icon_door = "mixed"

/obj/structure/closet/astra/wardrobe/populate_contents()
	new /obj/item/clothing/under/color/slate(src)
	new /obj/item/clothing/under/color/jeans/white(src)
	new /obj/item/clothing/under/color/jeans/flannel/red(src)
	new /obj/item/clothing/under/color/silk/black(src)
	new /obj/item/clothing/under/color/skirt/red(src)
	new /obj/item/clothing/under/color/suit/brown(src)
	new /obj/item/clothing/under/color/suit/black(src)
	new /obj/item/clothing/under/color/bskirt/black(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/shoes/sandal(src)
	new /obj/item/clothing/head/soft/grey(src)

/obj/structure/closet/astra/wardrobe/blue
	name = "blue wardrobe"
	desc = "Blue is the color of all that I wear. Blue are the streets and all the trees are too."
	icon_door = "blue"

/obj/structure/closet/astra/wardrobe/blue/populate_contents()
	new /obj/item/clothing/under/color/blue(src)
	new /obj/item/clothing/under/color/blue(src)
	new /obj/item/clothing/under/color/tee_shirt/blue(src)
	new /obj/item/clothing/under/color/jeans/blue(src)
	new /obj/item/clothing/under/color/jeans/flannel/blue(src)
	new /obj/item/clothing/under/color/silk/blue(src)
	new /obj/item/clothing/under/color/skirt/blue(src)
	new /obj/item/clothing/under/color/suit/blue(src)
	new /obj/item/clothing/under/color/bskirt/blue(src)
	new /obj/item/clothing/shoes/color/blue(src)
	new /obj/item/clothing/head/soft/blue(src)
	new /obj/item/clothing/head/patrol/nt(src)
	new /obj/item/clothing/head/trucker(src)
	new /obj/item/clothing/mask/bandana/blue(src)
	new /obj/item/clothing/head/beret(src)

/obj/structure/closet/astra/wardrobe/orange
	name = "orange wardrobe"
	desc = "Like a prison."
	icon_door = "orange"

/obj/structure/closet/astra/wardrobe/orange/populate_contents()
	new /obj/item/clothing/under/color/orange(src)
	new /obj/item/clothing/under/color/orange(src)
	new /obj/item/clothing/under/color/tee_shirt/orange(src)
	new /obj/item/clothing/under/color/jeans/orange(src)
	new /obj/item/clothing/under/color/silk/orange(src)
	new /obj/item/clothing/under/color/skirt/orange(src)
	new /obj/item/clothing/shoes/color/orange(src)
	new /obj/item/clothing/head/soft/orange(src)
	new /obj/item/clothing/head/trucker/orange(src)
	new /obj/item/clothing/mask/bandana/orange(src)
	new /obj/item/clothing/head/beret/orange(src)

/obj/structure/closet/astra/wardrobe/green
	name = "green wardrobe"
	desc = "If I was green, I would die."
	icon_door = "green"

/obj/structure/closet/astra/wardrobe/green/populate_contents()
	new /obj/item/clothing/under/color/green(src)
	new /obj/item/clothing/under/color/green(src)
	new /obj/item/clothing/under/color/tee_shirt/green(src)
	new /obj/item/clothing/under/color/jeans/green(src)
	new /obj/item/clothing/under/color/jeans/flannel/green(src)
	new /obj/item/clothing/under/color/silk/green(src)
	new /obj/item/clothing/under/color/skirt/green(src)
	new /obj/item/clothing/shoes/color/green(src)
	new /obj/item/clothing/head/soft/green(src)
	new /obj/item/clothing/head/trucker/green(src)
	new /obj/item/clothing/mask/bandana/green(src)
	new /obj/item/clothing/head/beret/green(src)

/obj/structure/closet/astra/wardrobe/brown
	name = "brown wardrobe"
	desc = "How drab."
	icon_door = "mixed"

/obj/structure/closet/astra/wardrobe/brown/populate_contents()
	new /obj/item/clothing/under/color/brown(src)
	new /obj/item/clothing/under/color/brown(src)
	new /obj/item/clothing/under/color/tee_shirt/brown(src)
	new /obj/item/clothing/under/color/jeans/brown(src)
	new /obj/item/clothing/under/color/jeans/flannel/brown(src)
	new /obj/item/clothing/under/color/silk/brown(src)
	new /obj/item/clothing/under/color/skirt/brown(src)
	new /obj/item/clothing/under/color/suit/brown(src)
	new /obj/item/clothing/under/color/bskirt/brown(src)
	new /obj/item/clothing/shoes/color/brown(src)
	new /obj/item/clothing/head/soft/brown(src)
	new /obj/item/clothing/head/patrol/brown(src)
	new /obj/item/clothing/head/trucker/brown(src)
	new /obj/item/clothing/mask/bandana/brown(src)
	new /obj/item/clothing/head/beret/brown(src)

/obj/structure/closet/astra/wardrobe/slate
	name = "grey wardrobe"
	desc = "This can't be good."
	icon_door = "grey"

/obj/structure/closet/astra/wardrobe/slate/populate_contents()
	new /obj/item/clothing/under/color/slate(src)
	new /obj/item/clothing/under/color/slate(src)
	new /obj/item/clothing/under/color/tee_shirt/slate(src)
	new /obj/item/clothing/under/color/jeans/slate(src)
	new /obj/item/clothing/under/color/silk/slate(src)
	new /obj/item/clothing/under/color/skirt/slate(src)
	new /obj/item/clothing/shoes/color/grey(src)
	new /obj/item/clothing/head/soft/grey(src)
	new /obj/item/clothing/head/trucker/slate(src)
	new /obj/item/clothing/mask/bandana/slate(src)
	new /obj/item/clothing/head/beret/slate(src)

/obj/structure/closet/astra/wardrobe/white
	name = "white wardrobe"
	desc = "A clean slate."
	icon_door = "white"

/obj/structure/closet/astra/wardrobe/white/populate_contents()
	new /obj/item/clothing/under/color/white(src)
	new /obj/item/clothing/under/color/white(src)
	new /obj/item/clothing/under/color/tee_shirt/white(src)
	new /obj/item/clothing/under/color/jeans/white(src)
	new /obj/item/clothing/under/color/silk/white(src)
	new /obj/item/clothing/under/color/skirt/white(src)
	new /obj/item/clothing/shoes/color/white(src)
	new /obj/item/clothing/head/soft/mime(src)
	new /obj/item/clothing/head/trucker/white(src)
	new /obj/item/clothing/mask/bandana/white(src)
	new /obj/item/clothing/head/beret/white(src)

/obj/structure/closet/astra/wardrobe/red
	name = "red wardrobe"
	desc = "Keep away from bovines."
	icon_door = "red"

/obj/structure/closet/astra/wardrobe/red/populate_contents()
	new /obj/item/clothing/under/color/red(src)
	new /obj/item/clothing/under/color/red(src)
	new /obj/item/clothing/under/color/tee_shirt/red(src)
	new /obj/item/clothing/under/color/jeans/red(src)
	new /obj/item/clothing/under/color/jeans/flannel/red(src)
	new /obj/item/clothing/under/color/silk/red(src)
	new /obj/item/clothing/under/color/skirt/red(src)
	new /obj/item/clothing/under/color/suit/red(src)
	new /obj/item/clothing/under/color/bskirt/red(src)
	new /obj/item/clothing/shoes/color/red(src)
	new /obj/item/clothing/head/soft/red(src)
	new /obj/item/clothing/head/patrol/sec/red(src)
	new /obj/item/clothing/head/trucker/red(src)
	new /obj/item/clothing/mask/bandana/red(src)
	new /obj/item/clothing/head/beret/red(src)

/obj/structure/closet/astra/wardrobe/black
	name = "black wardrobe"
	desc = "So formal."
	icon_door = "black"

/obj/structure/closet/astra/wardrobe/black/populate_contents()
	new /obj/item/clothing/under/color/black(src)
	new /obj/item/clothing/under/color/black(src)
	new /obj/item/clothing/under/color/tee_shirt/black(src)
	new /obj/item/clothing/under/color/jeans/black(src)
	new /obj/item/clothing/under/color/silk/black(src)
	new /obj/item/clothing/under/color/skirt/black(src)
	new /obj/item/clothing/under/color/suit/black(src)
	new /obj/item/clothing/under/color/bskirt/black(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/head/soft/black(src)
	new /obj/item/clothing/head/patrol/black(src)
	new /obj/item/clothing/head/trucker/black(src)
	new /obj/item/clothing/mask/bandana/black(src)
	new /obj/item/clothing/head/beret/black(src)

/obj/structure/closet/astra/wardrobe/yellow
	name = "yellow wardrobe"
	desc = "Ready for summer."
	icon_door = "yellow"

/obj/structure/closet/astra/wardrobe/yellow/populate_contents()
	new /obj/item/clothing/under/color/yellow(src)
	new /obj/item/clothing/under/color/yellow(src)
	new /obj/item/clothing/under/color/tee_shirt/yellow(src)
	new /obj/item/clothing/under/color/jeans/yellow(src)
	new /obj/item/clothing/under/color/silk/yellow(src)
	new /obj/item/clothing/under/color/skirt/yellow(src)
	new /obj/item/clothing/shoes/color/yellow(src)
	new /obj/item/clothing/head/soft/yellow(src)
	new /obj/item/clothing/head/trucker/yellow(src)
	new /obj/item/clothing/mask/bandana/gold(src)
	new /obj/item/clothing/head/beret/yellow(src)

/obj/structure/closet/astra/wardrobe/violet
	name = "violet wardrobe"
	desc = "Garish."
	icon_door = "pink"

/obj/structure/closet/astra/wardrobe/violet/populate_contents()
	new /obj/item/clothing/under/color/violet(src)
	new /obj/item/clothing/under/color/violet(src)
	new /obj/item/clothing/under/color/tee_shirt/violet(src)
	new /obj/item/clothing/under/color/jeans/violet(src)
	new /obj/item/clothing/under/color/silk/violet(src)
	new /obj/item/clothing/under/color/skirt/violet(src)
	new /obj/item/clothing/shoes/color/purple(src)
	new /obj/item/clothing/head/soft/purple(src)
	new /obj/item/clothing/head/trucker/violet(src)
	new /obj/item/clothing/mask/bandana/purple(src)
	new /obj/item/clothing/head/beret/violet(src)

//EMERGENCY
/obj/structure/closet/astra/emcloset
	name = "emergency closet"
	desc = "A storage unit for emergency breathmasks and o2 tanks."
	icon_state = "emergency"
	rarity_value = 3
	spawn_tags = SPAWN_TAG_CLOSET_TECHNICAL

/obj/structure/closet/astra/emcloset/populate_contents()
	switch(pickweight(list("small" = 55, "aid" = 25, "tank" = 10, "both" = 10)))
		if ("small")
			new /obj/item/tank/emergency_oxygen(src)
			new /obj/item/tank/emergency_oxygen(src)
			new /obj/item/clothing/mask/breath(src)
			new /obj/item/clothing/mask/breath(src)
			new /obj/item/clothing/suit/space/emergency(src)
			new /obj/item/clothing/head/space/emergency(src)
		if ("aid")
			new /obj/item/tank/emergency_oxygen(src)
			new /obj/item/storage/toolbox/emergency(src)
			new /obj/item/clothing/mask/breath(src)
			new /obj/item/storage/firstaid/o2(src)
			new /obj/item/clothing/suit/space/emergency(src)
			new /obj/item/clothing/head/space/emergency(src)
		if ("tank")
			new /obj/item/tank/emergency_oxygen/engi(src)
			new /obj/item/clothing/mask/breath(src)
			new /obj/item/tank/emergency_oxygen/engi(src)
			new /obj/item/clothing/mask/breath(src)
		if ("both")
			new /obj/item/storage/toolbox/emergency(src)
			new /obj/item/tank/emergency_oxygen/engi(src)
			new /obj/item/clothing/mask/breath(src)
			new /obj/item/storage/firstaid/o2(src)
			new /obj/item/clothing/suit/space/emergency(src)
			new /obj/item/clothing/suit/space/emergency(src)
			new /obj/item/clothing/head/space/emergency(src)
			new /obj/item/clothing/head/space/emergency(src)

/obj/structure/closet/emcloset/legacy/populate_contents()
	new /obj/item/tank/oxygen(src)
	new /obj/item/clothing/mask/gas(src)

/*
 * Fire Closet
 */
/obj/structure/closet/astra/firecloset
	name = "fire-safety closet"
	desc = "A storage unit for fire-fighting supplies."
	icon_state = "fire"
	rarity_value = 1.5
	spawn_tags = SPAWN_TAG_CLOSET_TECHNICAL


/obj/structure/closet/astra/firecloset/populate_contents()
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/suit/fire(src)
	new /obj/item/clothing/head/hardhat/red(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/tank/oxygen/red(src)
	new /obj/item/extinguisher(src)
	new /obj/item/extinguisher(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)

/*
 * Tool Closet
 */
/obj/structure/closet/astra/toolcloset
	name = "tool closet"
	desc = "A storage unit for tools."
	icon_state = "eng"
	icon_door = "eng_tool"
	rarity_value = 1.5
	spawn_tags = SPAWN_TAG_CLOSET_TECHNICAL

/obj/structure/closet/astra/toolcloset/populate_contents()
	if(prob(40))
		new /obj/item/clothing/suit/storage/hazardvest(src)
	if(prob(70))
		new /obj/item/device/lighting/toggleable/flashlight(src)
	if(prob(70))
		new /obj/item/tool/screwdriver(src)
	if(prob(70))
		new /obj/item/tool/wrench(src)
	if(prob(70))
		new /obj/item/tool/weldingtool(src)
	if(prob(70))
		new /obj/item/tool/crowbar(src)
	if(prob(50))
		new /obj/item/tool/wirecutters(src)
	if(prob(50))
		new /obj/item/tool/wirecutters/pliers(src)
	if(prob(70))
		new /obj/item/device/t_scanner(src)
	if(prob(20))
		new /obj/item/storage/belt/utility(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(20))
		new /obj/item/tool/multitool(src)
	if(prob(5))
		new /obj/item/clothing/gloves/insulated(src)
	if(prob(5))
		new /obj/item/storage/pouch/engineering_tools(src)
	if(prob(1))
		new /obj/item/storage/pouch/engineering_supply(src)
	if(prob(1))
		new /obj/item/storage/pouch/engineering_material(src)
	if(prob(40))
		new /obj/item/clothing/head/hardhat(src)
	new /obj/spawner/tool_upgrade(src)
	new /obj/spawner/tool_upgrade(src)
	//Every tool closet contains a couple guaranteed toolmods

/*
 * Bombsuit closet
 */
/obj/structure/closet/astra/bombcloset
	name = "\improper EOD closet"
	desc = "A storage unit for explosion-protective space suits."
	icon_state = "bomb"
	rarity_value = 14.28
	spawn_tags = SPAWN_TAG_CLOSET_BOMB

/obj/structure/closet/astra/bombcloset/populate_contents()
	new /obj/item/clothing/suit/space/bomb(src)
	new /obj/item/clothing/under/color/black(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/head/space/bomb(src)

/*
 * Radiation Closet
 */
/obj/structure/closet/astra/radiation
	name = "radiation suit closet"
	desc = "A storage unit for rad-protective suits."
	icon_state = "eng"
	icon_door = "eng_rad"

/obj/structure/closet/astra/radiation/populate_contents()
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)
	new /obj/item/clothing/suit/radiation(src)
	new /obj/item/clothing/head/radiation(src)

//Freezers

/obj/structure/closet/secure_closet/freezer/astra
	icon_state = "fridge"
	name = "refrigerator"
	desc = "A small appliance for keeping food or samples cool."
	icon = 'modular/icons/astra_closet.dmi'
	anchored = TRUE
	icon_lock = null
/obj/structure/closet/secure_closet/freezer/astra/fridge
	name = "refrigerator"
	icon_state = "fridge"

/obj/structure/closet/secure_closet/freezer/fridge/astra/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/food/drinks/milk(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/food/drinks/soymilk(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/fancy/egg_box(src)

/obj/structure/closet/secure_closet/freezer/astra/kitchen
	name = "refrigerator"
	icon_state = "fridge"
	req_access = list(access_kitchen)

/obj/structure/closet/secure_closet/freezer/astra/kitchen/populate_contents()
	new /obj/item/reagent_containers/food/snacks/sliceable/cheesewheel(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/food/snacks/sliceable/butterstick(src)
	for(var/i in 2 to 3)
		new /obj/item/reagent_containers/food/drinks/milk(src)
	for(var/i in 2 to 3)
		new /obj/item/reagent_containers/food/drinks/soymilk(src)
	for(var/i in 2 to 3)
		new /obj/item/storage/fancy/egg_box(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/food/snacks/mint(src)

/obj/structure/closet/secure_closet/freezer/astra/meat
	name = "meat freezer"
	icon_state = "freezer"

/obj/structure/closet/secure_closet/freezer/astra/meat/populate_contents()
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/snacks/meat(src)
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/snacks/meat/chicken(src)

/obj/structure/closet/secure_closet/reinforced/astra/locker/kitchen
	name = "kitchen locker"
	desc = "A heavy metal cabinet to keep the heathens out of the cooking supplies."

/obj/structure/closet/secure_closet/reinforced/astra/locker/kitchen/populate_contents()
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/condiment/flour(src)
	new /obj/item/reagent_containers/food/condiment/sugar(src)
	new /obj/item/reagent_containers/food/condiment/ketchup(src)
	new /obj/item/reagent_containers/food/condiment/hotsauce(src)
	new /obj/item/reagent_containers/food/condiment/soysauce(src)
	new /obj/item/reagent_containers/food/condiment/coldsauce(src)
	new /obj/item/reagent_containers/food/condiment/cornoil(src)
	new /obj/item/reagent_containers/food/condiment/enzyme(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/food/condiment/saltshaker(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/food/condiment/peppermill(src)


/obj/structure/closet/secure_closet/freezer/astra/blood
	name = "blood storage"
	icon_state = "freezer"

/obj/structure/closet/secure_closet/freezer/astra/blood/populate_contents()
	new /obj/item/reagent_containers/blood/APlus(src)
	new /obj/item/reagent_containers/blood/AMinus
	new /obj/item/reagent_containers/blood/BPlus
	new /obj/item/reagent_containers/blood/BMinus
	new /obj/item/reagent_containers/blood/OPlus
	new /obj/item/reagent_containers/blood/OMinus
	new /obj/item/reagent_containers/blood/empty

/obj/structure/closet/secure_closet/astra/bar
	name = "drink cabinet"
	desc = "A locking faux wood paneled closet for only the finest spirits."
	req_access = list(access_bar)
	icon_state = "cabinet"
	icon_lock = null

/obj/structure/closet/secure_closet/astra/bar/populate_contents()
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)
	new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)


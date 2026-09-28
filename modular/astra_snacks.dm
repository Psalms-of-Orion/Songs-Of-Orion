
/obj/item/reagent_containers/food/snacks/astra
	icon = 'modular/icons/astra_snacks.dmi'
	name = "Raisin Bread"
	icon_state = "test"
	desc = "This looks ancient, like it was baked in a castle."
	description_info = "Expensive space-age preserved food, sometimes even made with real food. Usually flavored gelatin infused edible fibers."
	filling_color = "#ba8e6a"
	bitesize = 2
	center_of_mass = list("x"=15, "y"=9)
	nutriment_desc = list("bread" = 5, "raisins" = 2)
	nutriment_amt = 8
	open = FALSE
	junk_food = FALSE
	spawn_tags = SPAWN_TAG_COOKED_FOOD
	bad_type = /obj/item/reagent_containers/food/snacks/astra

//Counts how many bites remain. The plain obj sprite is unbitten.
//There is an _open sprite for when you take a bite with the wrapper on.
/obj/item/reagent_containers/food/snacks/astra/On_Consume(mob/living/eater)
	..()
	if(bitecount == 1)
		icon_state = "[initial(icon_state)]3"
	if(bitecount == 2)
		icon_state = "[initial(icon_state)]2"
	if(bitecount == 3)
		icon_state = "[initial(icon_state)]1"

/obj/item/reagent_containers/food/snacks/astra/update_icon()
	..()
	if (icon_state == "[initial(icon_state)]3_open")
		icon_state = "[initial(icon_state)]3"

/obj/item/trash/dried
	name = "\improper dried food wrapper"
	icon_state= "dried"
	icon = 'modular/icons/astra_snacks.dmi'


/obj/item/reagent_containers/food/snacks/astra/worms
	name = "preserved protein"
	icon_state = "worm"
	desc = "Freeze dried and lightly spiced."
	description_info = "Expensive space-age preserved food, made with real organisms!"
	trash = /obj/item/trash/dried
	filling_color = "#ba8e6a"
	center_of_mass = list("x"=15, "y"=15)
	nutriment_desc = list("salted mealworms" = 8)
	bitesize = 2
	nutriment_amt = 8
	junk_food = TRUE
	preloaded_reagents = list("protein" = 4)
	spawn_tags = SPAWN_TAG_JUNKFOOD_RATIONS
	taste_tag = list(INSECTS_FOOD,SALTY_FOOD)

//Baron went all out and made a whole variety of fruit snacks.
/obj/item/reagent_containers/food/snacks/astra/fruit
	name = "preserved apples"
	icon_state = "apple"
	desc = "Dried and lightly spiced apple rings."
	filling_color = "#ba8e6a"
	center_of_mass = list("x"=15, "y"=15)
	nutriment_desc = list("dried apple" = 8)
	trash = /obj/item/trash/dried
	filling_color = "#ba8e6a"
	bitesize = 2
	nutriment_amt = 8
	junk_food = TRUE
	spawn_tags = SPAWN_TAG_JUNKFOOD_RATIONS
	taste_tag = list(VEGAN_FOOD,VEGETARIAN_FOOD)


/obj/item/reagent_containers/food/snacks/astra/fruit/melon
	name = "preserved watermelon"
	icon_state = "melon"
	desc = "Dried and lightly sugared watermelon wedges."
	filling_color = "#c2462e"
	nutriment_desc = list("dried melon" = 7, "syrup" = 1)
	taste_tag = list(VEGAN_FOOD,VEGETARIAN_FOOD, SWEET_FOOD)


/obj/item/reagent_containers/food/snacks/astra/fruit/kiwi
	name = "preserved kiwi"
	icon_state = "kiwi"
	desc = "Dried and lightly sugared kiwi slices."
	filling_color = "#6ad743"
	nutriment_desc = list("dried kiwi" = 7, "syrup" = 1)
	taste_tag = list(VEGAN_FOOD,VEGETARIAN_FOOD, SWEET_FOOD)


/obj/item/reagent_containers/food/snacks/astra/fruit/cherry
	name = "preserved cherries"
	icon_state = "cherry"
	desc = "Freeze dried cherries, crunchy."
	filling_color = "#ec6e1a"
	nutriment_desc = list("dried cherry" = 8)

/obj/item/reagent_containers/food/snacks/astra/fruit/pear
	name = "preserved pear"
	icon_state = "pear"
	desc = "Freeze dried pear slices, crunchy."
	filling_color = "#81b63b"
	nutriment_desc = list("dried pear" = 8)


/obj/item/reagent_containers/food/snacks/astra/fruit/mango
	name = "preserved mango"
	icon_state = "mango"
	desc = "Freeze dried mango slices, crunchy."
	filling_color = "#cc8a49"
	nutriment_desc = list("dried mango" = 8)


/obj/item/reagent_containers/food/snacks/astra/fruit/orange
	name = "preserved orange"
	icon_state = "orange"
	desc = "Freeze dried orange slices and rind, crunchy."
	filling_color = "#cc8a49"
	nutriment_desc = list("dried orange" = 8)

//C U B E S
/obj/item/trash/foodcube
	name = "\improper cubed food wrapper"
	icon_state= "cubewrapper"
	icon = 'modular/icons/astra_snacks.dmi'

/obj/item/reagent_containers/food/snacks/astra_cube
	icon = 'modular/icons/astra_snacks.dmi'
	name = "Astro-Cube"
	icon_state = "brown"
	desc = "Platonic solid, edible."
	description_info = "Expensive space-age food for the finest of space-age people. Quite filling and quick to eat."
	filling_color = "#ba8e6a"
	trash = /obj/item/trash/foodcube
	bitesize = 5
	center_of_mass = list("x"=15, "y"=9)
	nutriment_desc = null
	nutriment_amt = 10
	bad_type = /obj/item/reagent_containers/food/snacks/astra_cube
	open = FALSE
	junk_food = FALSE
	taste_tag = list()

/obj/item/reagent_containers/food/snacks/astra_cube/plain
	nutriment_desc = list("food product" = 10)
	taste_tag = list(BLAND_FOOD,INSECTS_FOOD)

/obj/item/reagent_containers/food/snacks/astra_cube/blue
	name = "Astro-Cube, blue"
	icon_state = "blue"
	desc = "Blue flavored platonic solid."
	filling_color = "#1c8d8e"
	nutriment_desc = list("blue" = 8, "syrup" = 2)
	taste_tag = list(BLAND_FOOD,SWEET_FOOD)

/obj/item/reagent_containers/food/snacks/astra_cube/pizza
	name = "Astro-Cube, pizza"
	desc = "Platonic solid, pizza flavor."
	icon_state = "pizzacube"
	filling_color = "#ADAC7F"
	nutriment_desc = list("pizza" = 8, "spicy bits" = 2)
	taste_tag = list(CHEESE_FOOD,SPICY_FOOD)

/obj/item/reagent_containers/food/snacks/astra_cube/meat
	name = "Astro-Cube, spicy"
	desc = "Platonic solid, spiced meat type-2."
	icon_state = "red"
	filling_color = "#ADAC7F"
	preloaded_reagents = list("protein" = 8, "capsaicin" = 2)
	taste_tag = list(MEAT_FOOD,SPICY_FOOD,INSECTS_FOOD)

/obj/item/reagent_containers/food/snacks/astra_cube/green
	name = "Astro-Cube, medly"
	desc = "Platonic solid, compressed medly."
	icon_state = "green"
	filling_color = "#6b9d53"
	nutriment_desc = list("compressed green product" = 6, "spicy bits" = 2, "salt" = 2)


//S L O R P

/obj/item/reagent_containers/food/drinks/juicebox
	icon = 'modular/icons/astra_snacks.dmi'
	icon_state = "jb"
	name = "juice box"
	desc = "Plastic, yum. Don't chew on the straw."
	volume = 30
	amount_per_transfer_from_this = 5
	reagent_flags = NONE //starts closed
	bad_type = /obj/item/reagent_containers/food/drinks/juicebox
	possible_transfer_amounts = null
	center_of_mass = list("x"=16, "y"=12)

/obj/item/reagent_containers/food/drinks/juicebox/update_icon()
	..()

	var/iconstring = icon_state

	if(reagents.total_volume == 0)
		iconstring = "[initial(icon_state)]_e"
		icon_state = iconstring
		playsound(src.loc, 'sound/effects/paper_crumpling.ogg', rand(10, 50))
		volume = 0

//Juices
/obj/item/reagent_containers/food/drinks/juicebox/berry
	name = "juice box, berry"
	desc = "Berry flavored juice-type product."

	preloaded_reagents = list("berryjuice" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/banana
	name = "juice box, banana"
	desc = "Banana flavored juice-type product."

	preloaded_reagents = list("banana" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/carrot
	name = "juice box, carrot"
	desc = "Carrot flavored juice-type product."

	preloaded_reagents = list("carrotjuice" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/grape
	name = "juice box, grape"
	desc = "Grape flavored juice-type product."

	preloaded_reagents = list("grapejuice" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/orange
	name = "juice box, orange"
	desc = "Orange flavored juice-type product."

	preloaded_reagents = list("orangejuice" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/tomato
	name = "juice box, tomato"
	desc = "Tomato flavored juice-type product."

	preloaded_reagents = list("tomatojuice" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/watermelon
	name = "juice box, watermelon"
	desc = "Watermelon flavored juice-type product."

	preloaded_reagents = list("watermelonjuice" = 30)

//Boozebox
/obj/item/reagent_containers/food/drinks/juicebox/vodka
	name = "juice box, vodka"
	desc = "Vodka in a box. Classy."

	preloaded_reagents = list("vodka" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/wine
	name = "juice box, wine"
	desc = "Wine in a box. Classy."

	preloaded_reagents = list("wine" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/bloody_mary
	name = "juice box, tomato cocktail"
	desc = "Tomato Flavored Product. Vodka. Citric Acid. In a box. Classy."

	preloaded_reagents = list("bloody_mary" = 30)

//Jelly drinks

/obj/item/reagent_containers/food/drinks/juicebox/soy_latte
	icon_state = "coffee"
	name = "drink pouch, coffee gel"
	desc = "Soy latte flavored, room temperature coffee jelly."
	description_info = "Expensive space-age beverage-gel for micro-gravity consumption."

	preloaded_reagents = list("soy_latte" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/vodkamartini
	icon_state = "cocktail"
	name = "drink pouch, martini gel"
	desc = "A vodka martini, shear-thickening, do not stir."
	description_info = "Expensive space-age beverage-gel for micro-gravity consumption."
	preloaded_reagents = list("vodkamartini" = 30)

/obj/item/reagent_containers/food/drinks/juicebox/matcha
	icon_state = "matcha"
	name = "drink pouch, matcha gel"
	desc = "Simulated tea, shear thickening aerospace jelly."
	description_info = "Expensive space-age beverage-gel for micro-gravity consumption."
	preloaded_reagents = list("greentea" = 25, "cream" = 5)

//Medicine
/obj/item/reagent_containers/food/drinks/juicebox/tricord
	name = "pharmaceutical box, cold and flu"
	desc = "Berry flavored tricordrazine, with straw."
	description_info = "Consult medical professionals before use."
	volume = 25
	preloaded_reagents = list("berryjuice" = 10, "tricordrazine" = 10, "paracetamol" = 5)

/obj/item/reagent_containers/food/drinks/juicebox/burn
	name = "pharmaceutical box, cooling"
	desc = "For balancing heated humors, lemon flavored and refreshing."
	description_info = "Consult medical professionals before use."
	volume = 25
	preloaded_reagents = list("lemonade" = 10, "kelotane" = 10, "paracetamol" = 5)

/obj/item/reagent_containers/food/drinks/juicebox/toxin
	name = "pharmaceutical box, nausea"
	desc = "For balancing phlegmatic humors, cherry flavor."
	description_info = "Consult medical professionals before use."
	volume = 25
	preloaded_reagents = list("cherryjelly" = 10, "anti_toxin" = 10, "paracetamol" = 5)

/obj/item/reagent_containers/food/drinks/juicebox/soma_cherry
	name = "pharmaceutical box, Cherry Soma"
	desc = "For balancing humors, cherry flavor."
	description_info = "Consult medical professionals before use."
	volume = 30
	preloaded_reagents = list("suppressital" = 15, "cherryjelly" = 15)

/obj/item/reagent_containers/food/drinks/juicebox/soma_berry
	name = "pharmaceutical box, Berry Soma"
	desc = "For balancing humors, berry flavor."
	description_info = "Consult medical professionals before use."
	volume = 30
	preloaded_reagents = list("suppressital" = 15, "berryjuice" = 15)

/obj/item/reagent_containers/food/drinks/juicebox/soma_watermelon
	name = "pharmaceutical box, Watermelon Soma"
	desc = "For balancing humors, watermelon flavor."
	description_info = "Consult medical professionals before use."
	volume = 30
	preloaded_reagents = list("suppressital" = 15, "watermelonjuice" = 15)

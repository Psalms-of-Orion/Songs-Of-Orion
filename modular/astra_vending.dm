// We're keeping legacy vendors intact for the sake of compatability, as with all our modular systems.

/obj/machinery/vending/snacks
	name = "vending machine"
	desc = "A generic vending machine, who knows what horrors it holds."
	icon_state = "snacks"
	products = list(/obj/item/reagent_containers/food/snacks/astra/worms = 2, /obj/item/reagent_containers/food/snacks/astra/fruit = 2,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/melon = 2, /obj/item/reagent_containers/food/snacks/astra/fruit/kiwi = 2,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/cherry =2, /obj/item/reagent_containers/food/snacks/astra/fruit/pear= 2,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/mango = 2, /obj/item/reagent_containers/food/snacks/astra/fruit/orange = 2,
	 /obj/item/reagent_containers/food/snacks/astra_cube/plain = 2, /obj/item/reagent_containers/food/snacks/astra_cube/blue = 2,
	 /obj/item/reagent_containers/food/snacks/astra_cube/pizza = 2,
	 /obj/item/reagent_containers/food/snacks/astra_cube/meat = 2, /obj/item/reagent_containers/food/snacks/astra_cube/green = 2)
	prices = list(/obj/item/reagent_containers/food/snacks/astra/worms = 20, /obj/item/reagent_containers/food/snacks/astra/fruit = 20,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/melon = 20, /obj/item/reagent_containers/food/snacks/astra/fruit/kiwi = 20,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/cherry =20, /obj/item/reagent_containers/food/snacks/astra/fruit/pear= 20,
	 /obj/item/reagent_containers/food/snacks/astra/fruit/mango = 20, /obj/item/reagent_containers/food/snacks/astra/fruit/orange = 20,
	 /obj/item/reagent_containers/food/snacks/astra_cube = 35, /obj/item/reagent_containers/food/snacks/astra_cube/blue = 35,
	 /obj/item/reagent_containers/food/snacks/astra_cube/pizza = 35,
	 /obj/item/reagent_containers/food/snacks/astra_cube/meat = 35, /obj/item/reagent_containers/food/snacks/astra_cube/green = 35)
	vendor_department = DEPARTMENT_MEDICAL

/obj/machinery/vending/juice
	name = "juice machine"
	desc = "The big sipp."
	icon_state = "juice"
	products = list(/obj/item/reagent_containers/food/drinks/juicebox/berry = 2, /obj/item/reagent_containers/food/drinks/juicebox/banana =2,
	/obj/item/reagent_containers/food/drinks/juicebox/grape = 2, /obj/item/reagent_containers/food/drinks/juicebox/orange =2,
	/obj/item/reagent_containers/food/drinks/juicebox/watermelon = 2, /obj/item/reagent_containers/food/drinks/juicebox/carrot = 2,
	/obj/item/reagent_containers/food/drinks/juicebox/tomato = 2, /obj/item/reagent_containers/food/drinks/juicebox/vodka = 4,
	/obj/item/reagent_containers/food/drinks/juicebox/wine = 4,
	/obj/item/reagent_containers/food/drinks/juicebox/soy_latte = 4,
	/obj/item/reagent_containers/food/drinks/juicebox/matcha = 2, /obj/item/reagent_containers/food/drinks/juicebox/soma_berry = 2
	)
	contraband = list(/obj/item/reagent_containers/food/drinks/juicebox/bloody_mary = 4, /obj/item/reagent_containers/food/drinks/juicebox/vodkamartini = 4,
	/obj/item/reagent_containers/food/drinks/juicebox/tricord = 2, /obj/item/reagent_containers/food/drinks/juicebox/burn = 2,
	/obj/item/reagent_containers/food/drinks/juicebox/toxin = 2, /obj/item/reagent_containers/food/drinks/juicebox/soma_cherry = 2
	)
	prices = list(/obj/item/reagent_containers/food/drinks/juicebox/berry = 20, /obj/item/reagent_containers/food/drinks/juicebox/banana =20,
	/obj/item/reagent_containers/food/drinks/juicebox/grape = 20, /obj/item/reagent_containers/food/drinks/juicebox/orange =20,
	/obj/item/reagent_containers/food/drinks/juicebox/watermelon = 20, /obj/item/reagent_containers/food/drinks/juicebox/carrot = 20,
	/obj/item/reagent_containers/food/drinks/juicebox/tomato = 20, /obj/item/reagent_containers/food/drinks/juicebox/vodka = 40,
	/obj/item/reagent_containers/food/drinks/juicebox/wine = 40,
	/obj/item/reagent_containers/food/drinks/juicebox/soy_latte = 30,
	/obj/item/reagent_containers/food/drinks/juicebox/matcha = 30, /obj/item/reagent_containers/food/drinks/juicebox/soma_berry = 50,
	/obj/item/reagent_containers/food/drinks/juicebox/bloody_mary = 40, /obj/item/reagent_containers/food/drinks/juicebox/vodkamartini = 40,
	/obj/item/reagent_containers/food/drinks/juicebox/tricord = 80, /obj/item/reagent_containers/food/drinks/juicebox/burn = 80,
	/obj/item/reagent_containers/food/drinks/juicebox/toxin = 80, /obj/item/reagent_containers/food/drinks/juicebox/soma_cherry = 50
	)

	vendor_department = DEPARTMENT_MEDICAL


/obj/machinery/vending/coffee/astra
	name = "Hot Drinks machine"
	desc = "A vending machine which dispenses hot drinks."
	product_ads = "Have a drink!;Drink up!;It's good for you!;Would you like a hot joe?;I'd kill for some coffee!;The best beans in the galaxy.;Only the finest brew for you.;Mmmm. Nothing like a coffee.;I like coffee, don't you?;Coffee helps you work!;Try some tea.;We hope you like the best!;Try our new chocolate!"
	icon_state = "hotdrinks"
	icon_vend = "hotdrinks"

/obj/machinery/vending/cola/astra
	name = "Robust Softdrinks"
	desc = "A softdrink vendor provided by Robust Industries, LLC."
	icon_state = "drinks"

/obj/machinery/vending/medical/astra
	name = "MiniPharma Plus"
	desc = "Medical drug dispenser."
	icon_state = "medical"
	icon_deny = "medical-deny"

/obj/machinery/vending/tool/astra
	name = "YouTool"
	desc = "Tools for tools."
	icon_state = "engineer"
	icon_deny = "engineer"

/obj/machinery/vending/engivend/astra
	name = "Engi-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	icon_state = "industrial"
	icon_deny = "industrial-deny"
	products = list(/obj/item/clothing/glasses/powered/meson = 2,/obj/item/tool/multitool = 4,/obj/item/electronics/airlock = 10,/obj/item/electronics/circuitboard/apc = 10,/obj/item/electronics/airalarm = 10,/obj/item/cell/large/high = 10,/obj/item/rpd = 3)
	contraband = list(/obj/item/cell/large/potato = 3)
	premium = list(/obj/item/storage/belt/utility = 3)
	auto_price = FALSE

/obj/machinery/vending/engineering/astra
	name = "Robco Tool Maker"
	desc = "Everything you need for do-it-yourself ship repair."
	icon_state = "industrial"
	icon_deny = "industrial-deny"

/obj/machinery/vending/minimed
	name = "MicroMed"
	desc = "Fresh squeezed medicine, right off the vine."
	icon_state = "minimed"
	light_color = COLOR_LIGHTING_GREEN_BRIGHT
	icon_deny = "minimed"
	product_ads = "Self-medication at the press of a button!;Natural chemicals!;Fresh Squeezed!;Kid tested, doctor approved!;Just a sip."

/obj/machinery/vending/minimed
	products = list(
		/obj/item/stack/medical/bruise= 1, /obj/item/stack/medical/ointment = 1,
		/obj/item/reagent_containers/hypospray/autoinjector = 2,
		/obj/item/device/scanner/health = 1,
		/obj/item/stack/medical/splint = 1,
		/obj/item/reagent_containers/food/drinks/juicebox/tricord = 4,
		/obj/item/reagent_containers/food/drinks/juicebox/burn = 4,
		/obj/item/reagent_containers/food/drinks/juicebox/toxin = 4,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_cherry = 2,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_berry = 2,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_watermelon = 2
		)
	contraband = list(
		/obj/item/reagent_containers/syringe/antitoxin = 2,
		/obj/item/reagent_containers/syringe/spaceacillin = 2,
		/obj/item/reagent_containers/pill/tox = 1
		)
	prices = list(
		/obj/item/device/scanner/health = 50,

		/obj/item/stack/medical/bruise_pack = 100, /obj/item/stack/medical/ointment = 100,
		/obj/item/device/scanner/health = 50,

		/obj/item/reagent_containers/hypospray/autoinjector = 100,

		/obj/item/stack/medical/splint = 200,

		/obj/item/reagent_containers/syringe/antitoxin = 200,
		/obj/item/reagent_containers/syringe/spaceacillin = 200,
		/obj/item/reagent_containers/pill/tox = 100,
		/obj/item/reagent_containers/food/drinks/juicebox/tricord = 150,
		/obj/item/reagent_containers/food/drinks/juicebox/burn = 150,
		/obj/item/reagent_containers/food/drinks/juicebox/toxin = 150,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_cherry = 50,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_berry = 50,
		/obj/item/reagent_containers/food/drinks/juicebox/soma_watermelon = 50
		)
	auto_price = FALSE

/obj/machinery/vending/battery
	name = "Robustcell Power Vendor"
	desc = "Trust is power, and there's no power you can trust like Robustcell."
	product_slogans = "Trust is power, and there's no cell you can trust like Robustcell.;No battery is stronger nor lasts longer.;One that Lasts!;You can't top the copper top!"
	product_ads = "Robust!;Trustworthy!;Durable!"
	icon_state = "battery"
	products = list(
		/obj/item/cell/large = 2,
		/obj/item/cell/large/astra/disposable = 2,
		/obj/item/cell/large/astra/disposable/high = 2,
		/obj/item/cell/large/astra = 2,
		/obj/item/cell/medium = 4,
		/obj/item/cell/medium/astra/disposable = 4,
		/obj/item/cell/medium/astra/disposable/high = 4,
		/obj/item/cell/medium/astra = 2,
		/obj/item/cell/small = 3,
		/obj/item/storage/fancy/battery = 4,
		/obj/item/storage/fancy/battery/premium = 2,
		/obj/item/cell/small/astra = 2,
		)
	contraband = list(
		/obj/item/cell/small/astra/high = 2,
		/obj/item/cell/medium/astra/high = 2,
		/obj/item/cell/large/astra/high = 2
		)
	prices = list(
		/obj/item/cell/large = 350,
		/obj/item/cell/large/astra/disposable = 200,
		/obj/item/cell/large/astra/disposable/high = 300,
		/obj/item/cell/large/astra = 500,
		/obj/item/cell/medium = 200,
		/obj/item/cell/medium/astra/disposable = 100,
		/obj/item/cell/medium/astra/disposable/high = 200,
		/obj/item/cell/medium/astra = 400,
		/obj/item/cell/small = 150,
		/obj/item/storage/fancy/battery = 150,
		/obj/item/storage/fancy/battery/premium = 200,
		/obj/item/cell/small/astra = 350,
		/obj/item/cell/small/astra/high = 500,
		/obj/item/cell/medium/astra/high = 700,
		/obj/item/cell/large/astra/high = 900
				)


	auto_price = FALSE

/obj/machinery/chemical_dispenser/soda/astra
	icon_state = "softdrink_dispenser"
	icon_on = "softdrink_dispenser"
	name = "softdrink dispenser"
	ui_title = "Syrup Mixer"

	desc = "Drinks at the press of a button."
	dispensable_reagents = list("water","ice","icetea","icegreentea","cola","spacemountainwind","dr_gibb","space_up","tonic","sodawater","lemon_lime","sugar")

/obj/machinery/chemical_dispenser/soda/coffee
	icon_state = "coffee_dispenser"
	icon_on = "coffee_dispenser"
	name = "coffee machine"
	ui_title = "Instant hot beverages"

	desc = "Hot drinks at the press of a button."
	dispensable_reagents = list("water","ice","honey","lemonjuice","soymilk","sugar","tea","greentea","coffee", "hot_coco")
	hacked_reagents = list("icecoffee","irishcoffee","rewriter", "milkshake", "longislandicedtea")

/obj/machinery/chemical_dispenser/boda
	icon_state = "boda_dispenser"
	name = "вода fountain"
	desc = "A drink fabricating machine, capable of producing many sugary drinks with just one touch."
	layer = OBJ_LAYER
	ui_title = "газированная питьевая вода"//Carbonated Drinking Water
	var/icon_on = "boda_dispenser"

	circuit = /obj/item/electronics/circuitboard/chemical_dispenser/soda

	accept_beaker = FALSE
	density = TRUE
	dispensable_reagents = list("cola","tonic","sodawater")
	hacked_reagents = list("vodka","vodkamartini","vodkatonic","blackrussian")
	has_tiered_reagents = FALSE

/obj/machinery/chemical_dispenser/boda/attackby(obj/item/I, mob/living/user)
	..()
	if(istype(I, /obj/item/tool/multitool) && length(hacked_reagents))
		hackedcheck = !hackedcheck
		if(!hackedcheck)
			to_chat(user, "You change the mode from 'Boda' to 'TOVARISHCH'.")
			dispensable_reagents += hacked_reagents

		else
			to_chat(user, "You change the mode from 'TOVARISHCH' to 'Boda'.")
			dispensable_reagents -= hacked_reagents

obj/machinery/chemical_dispenser/boda/update_icon()
	cut_overlays()
	if(stat & (BROKEN|NOPOWER))
		icon_state = icon_on+"_off"
	else
		icon_state = icon_on

	if(beaker)
		overlays += image(icon, icon_on+"_loaded")

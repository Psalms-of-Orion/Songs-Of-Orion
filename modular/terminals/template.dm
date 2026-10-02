

///////////////////
// LORE CONSOLES //
///////////////////
//Originally made by Trillby back in the Pandemic(tm) days.//
//Re-made as 516 changed HTML enough to break them.//
//These basic versions can be edited in-game with some difficulty, but it's possible.//

/obj/structure/salvageable/lore
	name = "old personal terminal"
	icon_state = "personal"
	spawn_blacklisted = TRUE
	density = FALSE
	var/console_light_color = COLOR_LIGHTING_GREEN_MACHINERY
	var/window_size = null
	var/datalog_name = "Old Data Log"
	var/message = {"
		<HTML><HEAD><TITLE>Old Data Log</TITLE></HEAD>
		<BODY bgcolor='#000000'> <FONT COLOR="#32CD32"><center><large><b>ERROR DATA LOSS</b></large></br>
		</br>
		Issued under the ERROR</br>
		Please contact Support</br>
		</br>
		<b>ERROR</b></center></br>
		</BODY></HTML>
		"}
	pixel_y = 14
	salvageable_parts = list(
		/obj/item/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/computer_hardware/led = 40,
		/obj/item/computer_hardware/led/adv = 40,
		/obj/item/stack/material/glass{amount = 5} = 70,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/computer_hardware/network_card = 60,
		/obj/item/computer_hardware/network_card/advanced = 40,
		/obj/item/computer_hardware/network_card/wired = 40,
		/obj/item/computer_hardware/card_slot = 40,
		/obj/item/computer_hardware/processor_unit = 60,
		/obj/item/computer_hardware/processor_unit/small = 50,
		/obj/item/computer_hardware/processor_unit/adv = 40,
		/obj/item/computer_hardware/processor_unit/adv/small = 30,
		/obj/item/computer_hardware/hard_drive = 60,
		/obj/item/computer_hardware/hard_drive/advanced = 40,
		/obj/spawner/lathe_disk = 40,
		/obj/spawner/lathe_disk/advanced = 10,
	)

/obj/structure/salvageable/lore/attackby(obj/item/I, mob/user)
	if(I.get_tool_type(usr, list(QUALITY_PRYING), src))
		to_chat(user, SPAN_NOTICE("You start salvage anything useful from \the [src]."))
		if(I.use_tool(user, src, WORKTIME_LONG, QUALITY_PRYING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			playsound(user, 'sound/machines/shutdown.ogg', 60, 1)
			dismantle()
			qdel(src)
			return

/obj/structure/salvageable/lore/tester
	datalog_name = "Mew Mew Kitten Delux"
	message = {"
		<HTML><HEAD><TITLE>HELLO, Mew Mew Kitten Enjoyers</TITLE></HEAD>
		<BODY bgcolor='#000000'> <FONT COLOR="#32CD32"><center><large><b>THE LONG AWAITED MEW MEW KITTEN DELUX IS FINALLY HERE BUY IT AT</b></large></br>
		</br>
		ERROR HYPERLINK BLOCED</br>
		Please contact Support</br>
		</br>
		<b>ENJOY YOUR GAME!</b></center></br>
		</BODY></HTML>
		"}

/obj/structure/salvageable/lore/Initialize()
	. = ..()
	set_light(l_range = 1.5, l_power = 1, l_color = console_light_color)
	if(icon_state == "personal")
		icon_state = "personal[rand(0,12)]"
	else
		return

/obj/structure/salvageable/lore/interact(mob/user)
	..()
	user << browse(HTML_BODY_SKELETON("[message]"), "window=[datalog_name][window_size != null ? ";size=[window_size]" : ""]")
	playsound(loc, 'sound/machines/computer_touch.ogg', 50, 1)
/obj/structure/salvageable/lore/attack_hand(mob/user)
	..()
	user << browse(HTML_BODY_SKELETON("[message]"), "window=[datalog_name][window_size != null ? ";size=[window_size]" : ""]")
	playsound(loc, 'sound/machines/computer_touch.ogg', 50, 1)

/obj/structure/salvageable/lore/template_blue
	name = "TEMPLATE information terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal"
	console_light_color = COLOR_LIGHTING_BLUE_MACHINERY
	datalog_name = "Blue_template"
	message = {"
		<HTML><head>
		<style>
		h1 {font-size: 21px; margin: 15px 0px 5px;}
		h2 {font-size: 15px; margin: 15px 0px 5px;}
		li {margin: 2px 0px 2px 15px;}
		ul {margin: 5px; padding: 0px;}
		ol {margin: 5px; padding: 0px 15px;}
		body {font-size: 13px; font-family: Consolas;}
		</style>
		<TITLE>TITLE TEXT HERE</TITLE>
		</head>
		<center><div style="background-color: #294071; color: #6ba5e0;"><FONT face = "Consolas">|  HOME   |  SETTINGS  |  FILES > DOC > <u>TEMPLATE</u>  |</div></center><br>
		<BODY bgcolor='#272635'> <FONT COLOR="#6ba5e0">
		BODY TEXT HERE! DO NOT FORGET TO REPLACE THE "TEMPLATE" ABOVE AND BELOW.
		<center><div style="background-color: #294071; color: #6ba5e0;"><FONT face = "Consolas">NTS-13 TEMPLATE ACCESS TERMINAL<102.21.528.144></div></center><br>
		</html>"}

/obj/structure/salvageable/lore/template_orange
	name = "TEMPLATE information terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal_or"
	console_light_color = COLOR_LIGHTING_ORANGE_MACHINERY
	datalog_name = "orange_template"
	message = {"
		<HTML><head>
		<style>
		h1 {font-size: 21px; margin: 15px 0px 5px;}
		h2 {font-size: 15px; margin: 15px 0px 5px;}
		li {margin: 2px 0px 2px 15px;}
		ul {margin: 5px; padding: 0px;}
		ol {margin: 5px; padding: 0px 15px;}
		body {font-size: 13px; font-family: Consolas;}
		</style>
		<TITLE>TITLE TEXT HERE</TITLE>
		</head>
		<center><div style="background-color: #5e1210; color: #fed018;"><FONT face = "Consolas">|  HOME   |  SETTINGS  |  FILES > DOC > <u>TEMPLATE</u>  |</div></center><br>
		<BODY bgcolor='#0d0405'> <FONT COLOR="#d35600">
		BODY TEXT HERE! DO NOT FORGET TO REPLACE THE "TEMPLATE" ABOVE AND BELOW.
		<center><div style="background-color: #5e1210; color: #fed018;"><FONT face = "Consolas">NTSS-13 TEMPLATE ACCESS TERMINAL<102.21.521.128></div></center><br>
		</html>"}

/obj/structure/salvageable/lore/template_green
	name = "TEMPLATE information terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal_gr"
	console_light_color = COLOR_LIGHTING_GREEN_MACHINERY
	datalog_name = "green_template"
	message = {"
		<HTML><head>
		<style>
		h1 {font-size: 21px; margin: 15px 0px 5px;}
		h2 {font-size: 15px; margin: 15px 0px 5px;}
		li {margin: 2px 0px 2px 15px;}
		ul {margin: 5px; padding: 0px;}
		ol {margin: 5px; padding: 0px 15px;}
		body {font-size: 13px; font-family: Consolas;}
		</style>
		<TITLE>TITLE TEXT HERE</TITLE>
		</head>
		<center><div style="background-color: #470000; color: #ff0000;"><FONT face = "Consolas">|  HOME   |  SETTINGS  |  FILES > DOC > <u>REACTOR.HTML</u>  |</div></center><br>
		<BODY bgcolor='#001000'> <FONT COLOR="#32CD32">
		BODY TEXT HERE! DO NOT FORGET TO REPLACE THE "TEMPLATE" ABOVE AND BELOW.
		<center><div style="background-color: #470000; color: #ff0000;"><FONT face = "Consolas">NTSS-13 ENGINEERING ACCESS TERMINAL<102.21.521.146></div></center>
		</html>"}

//These, however, use baked in .html files and cannot be edited in-game.//
//That said, these allow for much better visual effects and interactions.//
//Files can be found in modular/terminals/terminal_html, including the templates for making new ones.//
/obj/structure/salvageable/premade
	name = "old personal terminal"
	icon_state = "personal"
	spawn_blacklisted = TRUE
	var/console_light_color = COLOR_LIGHTING_GREEN_MACHINERY //be sure to match this and the color of your document.
	var/window_size = null
	var/datalog_name = "Old Data Log"
	var/data_source = 'modular/terminals/terminal_html/test.html'
	pixel_y = 14
	density = FALSE
	salvageable_parts = list(
		/obj/item/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/computer_hardware/led = 40,
		/obj/item/computer_hardware/led/adv = 40,
		/obj/item/stack/material/glass{amount = 5} = 70,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/computer_hardware/network_card = 60,
		/obj/item/computer_hardware/network_card/advanced = 40,
		/obj/item/computer_hardware/network_card/wired = 40,
		/obj/item/computer_hardware/card_slot = 40,
		/obj/item/computer_hardware/processor_unit = 60,
		/obj/item/computer_hardware/processor_unit/small = 50,
		/obj/item/computer_hardware/processor_unit/adv = 40,
		/obj/item/computer_hardware/processor_unit/adv/small = 30,
		/obj/item/computer_hardware/hard_drive = 60,
		/obj/item/computer_hardware/hard_drive/advanced = 40,
		/obj/spawner/lathe_disk = 40,
		/obj/spawner/lathe_disk/advanced = 10,
	)

/obj/structure/salvageable/premade/attackby(obj/item/I, mob/user)
	if(I.get_tool_type(usr, list(QUALITY_PRYING), src))
		to_chat(user, SPAN_NOTICE("You start salvage anything useful from \the [src]."))
		if(I.use_tool(user, src, WORKTIME_LONG, QUALITY_PRYING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			playsound(user, 'sound/machines/shutdown.ogg', 60, 1)
			dismantle()
			qdel(src)
			return

/obj/structure/salvageable/premade/Initialize()
	. = ..()
	set_light(l_range = 1.5, l_power = 1, l_color = console_light_color)
	if(icon_state == "personal")
		icon_state = "personal[rand(0,12)]"
	else
		return

/obj/structure/salvageable/premade/interact(mob/user)
	..()
	user << browse(data_source, "window=[datalog_name]")
	playsound(loc, 'sound/machines/computer_touch.ogg', 50, 1)

obj/structure/salvageable/premade/attack_hand(mob/user)
	..()
	user << browse(data_source, "window=[datalog_name]")
	playsound(loc, 'sound/machines/computer_touch.ogg', 50, 1)



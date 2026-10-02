//ENGINEERING INFORMATION TERMINALS//

/obj/structure/salvageable/premade/engineering
	name = "Information Terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal"
	spawn_blacklisted = TRUE
	console_light_color = COLOR_LIGHTING_GREEN_MACHINERY //be sure to match this and the color of your document.
	window_size = null
	datalog_name = "Old Data Log"
	data_source = 'modular/terminals/terminal_html/test.html'


/obj/structure/salvageable/premade/engineering/reactor
	name = "Reactor Information Terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal_gr"
	console_light_color = COLOR_LIGHTING_GREEN_MACHINERY //be sure to match this and the color of your document.
	datalog_name = "Reactor Information"
	data_source = 'modular/terminals/terminal_html/reactor_green.html'


/obj/structure/salvageable/premade/engineering/plumbing
	name = "Engineering MOTD Terminal"
	icon = 'modular/icons/info_terminals.dmi'
	icon_state = "terminal_or"
	console_light_color = COLOR_LIGHTING_ORANGE_MACHINERY //be sure to match this and the color of your document.
	datalog_name = "MOTD"
	data_source = 'modular/terminals/terminal_html/engineering_plumbing.html'

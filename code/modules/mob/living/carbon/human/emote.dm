/mob/living/carbon/human/emote(var/act,var/m_type=1,var/message = null)
	var/param = null

	if (findtext(act, "-", 1, null))
		var/t1 = findtext(act, "-", 1, null)
		param = copytext(act, t1 + 1, length(act) + 1)
		act = copytext(act, 1, t1)

	if(findtext(act,"s",-1) && !findtext(act,"_",-2))//Removes ending s's unless they are prefixed with a '_'
		act = copytext(act,1,length(act))

	var/muzzled = istype(src.wear_mask, /obj/item/clothing/mask/muzzle) || istype(src.wear_mask, /obj/item/grenade)
	//var/m_type = 1

	for (var/obj/item/implant/I in src)
		if (I.implanted)
			I.trigger(act, src)

	if(src.stat == 2 && (act != "deathgasp"))
		return

	var/cloud_emote = ""

	switch(act)
		if ("airguitar")
			if (!src.restrained())
				message = "is strumming the air and headbanging like a safari chimp."
				m_type = 1

		if ("attn")
			if (miming)
				message = "feigns whistling for attention."
				m_type = 1
			else
				if (!muzzled)
					message = "gives a sharp whistle!"
					m_type = 2
					playsound(loc, 'sound/vo/generic/attn.ogg', 80, 1)

		if ("blink")
			message = "blinks."
			m_type = 1
			playsound(loc, 'sound/vo/generic/blink.ogg', 30, 1)

		if ("blink_r")
			message = "blinks rapidly."
			m_type = 1

		if ("bow")
			if (!src.buckled)
				var/M = null
				if (param)
					for (var/mob/A in view(null, null))
						if (param == A.name)
							M = A
							break
				if (!M)
					param = null

				if (param)
					message = "bows to [param]."
				else
					message = "bows."
			m_type = 1

		if ("custom")
			var/input = sanitize(input("Choose an emote to display.") as text|null)
			if (!input)
				return
			var/input2 = input("Is this a visible or hearable emote?") in list("Visible","Hearable")
			if (input2 == "Visible")
				m_type = 1
			else if (input2 == "Hearable")
				if (src.miming)
					return
				m_type = 2
			else
				alert("Unable to use this emote, must be either hearable or visible.")
				return
			return custom_emote(m_type, message)

		if ("me")

			//if(silent && silent > 0 && findtext(message,"\"",1, null) > 0)
			//	return //This check does not work and I have no idea why, I'm leaving it in for reference.

			if (src.client)
				if (client.prefs.muted & MUTE_IC)
					to_chat(src, "\red You cannot send IC messages (muted).")
					return
				if (src.client.handle_spam_prevention(message,MUTE_IC))
					return
			if (stat)
				return
			if(!(message))
				return
			return custom_emote(m_type, message)

		if("pain")
			if(!message)
				if(miming)
					message = "appears to be in pain!"
					m_type = 1 // Can't we get defines for these?
				else
					if(prob(10))
						message = "flinches in pain."
					m_type = 1
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/pain (1).ogg', 'sound/vo/female/pain (2).ogg', 'sound/vo/female/pain (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/pain (1).ogg', 'sound/vo/male/pain (2).ogg', 'sound/vo/male/pain (3).ogg'), 30, 1)

			cloud_emote = "cloud-pain"

		if("painmoan")
			if(!message)
				if(miming)
					message = "appears to be in pain!"
					m_type = 1 // Can't we get defines for these?
				else
					if(prob(10))
						message = "gasps in pain."
					m_type = 1
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/painmoan (1).ogg', 'sound/vo/female/painmoan (2).ogg', 'sound/vo/female/painmoan (3).ogg', 'sound/vo/female/painmoan (4).ogg', 'sound/vo/female/painmoan (5).ogg', 'sound/vo/female/painmoan (6).ogg', 'sound/vo/female/painmoan (7).ogg', 'sound/vo/female/painmoan (8).ogg'), 30)
					else
						playsound(src, pick('sound/vo/male/painmoan (1).ogg', 'sound/vo/male/painmoan (2).ogg', 'sound/vo/male/painmoan (3).ogg', 'sound/vo/male/painmoan (4).ogg', 'sound/vo/male/painmoan (5).ogg'), 30)

			cloud_emote = "cloud-pain"

		if("painscream")
			if(!message)
				if(miming)
					message = "writhes agony!"
					m_type = 1 // Can't we get defines for these?
				else
					if(prob(10))
						message = "cries out in agony!"
					m_type = 1
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/painscream (1).ogg', 'sound/vo/female/painscream (2).ogg', 'sound/vo/female/painscream (3).ogg', 'sound/vo/female/painscream (4).ogg', 'sound/vo/female/painscream (5).ogg', 'sound/vo/female/painscream (6).ogg', 'sound/vo/female/painscream (7).ogg', 'sound/vo/female/painscream (8).ogg'), 30)
					else
						playsound(src, pick('sound/vo/male/painscream (1).ogg', 'sound/vo/male/painscream (2).ogg', 'sound/vo/male/painscream (3).ogg'), 30)

			cloud_emote = "cloud-pain"

		if("paincrit")
			if(!message)
				if(miming)
					message = "appears to be in pain!"
					m_type = 1 // Can't we get defines for these?
				else
					if(prob(10))
						message = "writhes in agony!"
					m_type = 1
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/paincrit (1).ogg', 'sound/vo/female/paincrit (2).ogg', 'sound/vo/female/paincrit (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/paincrit (1).ogg', 'sound/vo/male/paincrit (2).ogg'), 30, 1)

			cloud_emote = "cloud-pain"

		if ("psst")
			if (miming)
				message = "demands attention."
				m_type = 1
			else
				if (!muzzled)
					message = "pssts."
					m_type = 2
					playsound(loc, 'sound/vo/generic/psst.ogg', 30, 1)

		if ("salute")
			if (!src.buckled)
				var/M = null
				if (param)
					for (var/mob/A in view(null, null))
						if (param == A.name)
							M = A
							break
				if (!M)
					param = null

				if (param)
					message = "salutes to [param]."
				else
					message = "salutes."
				playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

			m_type = 1

		if ("choke")
			if(miming)
				message = "clutches [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] throat desperately!"
				m_type = 1
			else
				if (!muzzled)
					message = "chokes!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/femchoke1.ogg', 'sound/vo/female/femchoke2.ogg', 'sound/vo/female/femchoke3.ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/mchoke1.ogg', 'sound/vo/male/mchoke2.ogg', 'sound/vo/male/mchoke3.ogg'), 30, 1)
				else
					message = "makes a strong noise."
					m_type = 2

		if ("clear")
			if(miming)
				message = "adjusts [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] collar pointedly!"
				m_type = 1
			else
				if (!muzzled)
					message = "clears [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] throat."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/clearthroat.ogg', 'sound/vo/female/clearthroat (1).ogg', 'sound/vo/female/clearthroat (2).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/clearthroat (1).ogg', 'sound/vo/male/clearthroat (2).ogg', 'sound/vo/male/clearthroat (3).ogg'), 30, 1)


		if ("clap")
			if (!src.restrained())
				message = "claps."
				m_type = 2
				playsound(src, pick('sound/vo/generic/clap (1).ogg', 'sound/vo/generic/clap (2).ogg', 'sound/vo/generic/clap (3).ogg'), 30, 1)
				if(miming)
					m_type = 1


		if ("flap")
			if (!src.restrained())
				message = "flaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] wings."
				m_type = 2
				if(miming)
					m_type = 1
				playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("aflap")
			if (!src.restrained())
				message = "flaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] wings ANGRILY!"
				m_type = 2
				if(miming)
					m_type = 1

		if ("drool")
			message = "drools."
			m_type = 1

		if ("eyebrow")
			message = "raises an eyebrow."
			m_type = 1

		if ("chuckle")
			if(miming)
				message = "appears to chuckle."
				m_type = 1
			else
				if (!muzzled)
					message = "chuckles."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/chuckle (1).ogg', 'sound/vo/female/chuckle (2).ogg', 'sound/vo/female/chuckle (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/chuckle (1).ogg', 'sound/vo/male/chuckle (2).ogg', 'sound/vo/male/chuckle (3).ogg'), 30, 1)
				else
					message = "makes a noise."
					m_type = 2

		if ("twitch")
			message = "twitches violently."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_2.ogg', 80, 1)

		if ("twitch_s")
			message = "twitches."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("faint")
			message = "faints."
			if(src.sleeping)
				return //Can't faint while asleep
			src.sleeping += 10 //Short-short nap
			m_type = 1

		if ("cough")
			if(miming)
				message = "appears to cough!"
				m_type = 1
			else
				if (!muzzled)
					message = "coughs!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/cough (1).ogg', 'sound/vo/female/cough (2).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/cough (1).ogg', 'sound/vo/male/cough (2).ogg'), 30, 1)
				else
					message = "makes a strong noise."
					m_type = 2

		if ("frown")
			message = "frowns."
			m_type = 1

		if ("nod")
			message = "nods."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("blush")
			message = "blushes."
			m_type = 1

		if ("wave")
			message = "waves."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("gasp")
			if(miming)
				message = "appears to be gasping!"
				m_type = 1
			else
				if (!muzzled)
					message = "gasps!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src,'sound/vo/female/breathgasp.ogg', 30, 1)
					else
						playsound(src, pick('sound/vo/male/breathgasp (1).ogg', 'sound/vo/male/breathgasp (2).ogg', 'sound/vo/male/breathgasp (3).ogg'), 30, 1)
				else
					message = "makes a weak noise."
					m_type = 2
			cloud_emote = "cloud-gasp"

		if ("gasp2")
			if(miming)
				message = "appears gasp dramatically!"
				m_type = 1
			else
				if (!muzzled)
					message = "gasps!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/gasp (1).ogg', 'sound/vo/female/gasp (2).ogg', 'sound/vo/female/gasp (3).ogg'), 30)
					else
						playsound(src, pick('sound/vo/male/gasp (1).ogg', 'sound/vo/male/gasp (2).ogg', 'sound/vo/male/gasp (3).ogg'), 30)
				else
					message = "makes a weak noise."
					m_type = 2

		if ("deathgasp")
			if(stats.getPerk(PERK_TERRIBLE_FATE))
				message = "their inert body emits a strange sensation and a cold invades your body. Their screams before dying recount in your mind."
			else
				message = "[species.death_message]"
				if(get_sex() == FEMALE)
					playsound(src, pick('sound/vo/female/deathgurgle (1).ogg', 'sound/vo/female/deathgurgle (2).ogg', 'sound/vo/female/deathgurgle (3).ogg'), 30, 1)
				else
					playsound(src, pick('sound/vo/male/deathgurgle (1).ogg', 'sound/vo/male/deathgurgle (2).ogg', 'sound/vo/male/deathgurgle (3).ogg'), 30, 1)

			m_type = 1

		if ("giggle")
			if(miming)
				message = "giggles silently!"
				m_type = 1
			else
				if (!muzzled)
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/giggle (1).ogg', 'sound/vo/female/giggle (2).ogg'), 30, 1)
						message = "giggles."
					else
						message = "snickers."
						playsound(src, pick('sound/vo/male/giggle (1).ogg', 'sound/vo/male/giggle (2).ogg'), 30, 1)

				else
					message = "makes a noise."
					m_type = 2

		if ("glare")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break
			if (!M)
				param = null

			if (param)
				message = "glares at [param]."
			else
				message = "glares."

		if ("stare")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break
			if (!M)
				param = null

			if (param)
				message = "stares at [param]."
			else
				message = "stares."

		if ("look")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break

			if (!M)
				param = null

			if (param)
				message = "looks at [param]."
			else
				message = "looks."
			m_type = 1

		if ("grin")
			message = "grins."
			m_type = 1

		if ("cry")
			if(miming)
				message = "cries."
				m_type = 1
			else
				if (!muzzled)
					message = "cries."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/cry (2).ogg', 'sound/vo/female/cry (3).ogg', 'sound/vo/female/cry (4).ogg', 'sound/vo/female/cry (5).ogg', 'sound/vo/female/cry (6).ogg', 'sound/vo/female/cry (7).ogg'), 30, 0)
					else
						playsound(src, pick('sound/vo/male/cry (1).ogg', 'sound/vo/male/cry (2).ogg', 'sound/vo/male/cry (3).ogg', 'sound/vo/male/cry (4).ogg'), 30, 0)

				else
					message = "makes a weak noise. [get_visible_gender() == MALE ? "He" : get_visible_gender() == FEMALE ? "She" : "They"] [get_visible_gender() == NEUTER ? "frown" : "frowns"]."
					m_type = 2

		if ("sigh")
			if(miming)
				message = "sighs."
				m_type = 1
			else
				if (!muzzled)
					message = "sighs."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/sigh (1).ogg', 'sound/vo/female/sigh (2).ogg', 'sound/vo/female/sigh (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/sigh (1).ogg', 'sound/vo/male/sigh (2).ogg', 'sound/vo/male/sigh (3).ogg'), 30, 1)

				else
					message = "makes a weak noise."
					m_type = 2

		if ("laugh")
			if(miming)
				message = "acts out a laugh."
				m_type = 1
			else
				if (!muzzled)
					message = "laughs."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/laugh (1).ogg', 'sound/vo/female/laugh (2).ogg', 'sound/vo/female/laugh (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/laugh (1).ogg', 'sound/vo/male/laugh (2).ogg', 'sound/vo/male/laugh (3).ogg'), 30, 1)

				else
					message = "makes a noise."
					m_type = 2

		if ("mumble")
			message = "mumbles!"
			m_type = 2
			if(miming)
				m_type = 1

		if ("grumble")
			if(miming)
				message = "grumbles!"
				m_type = 1
			if (!muzzled)
				message = "grumbles!"
				m_type = 2
				if(get_sex() == FEMALE)
					playsound(src, 'sound/vo/female/grumble.ogg', 30, 1)
				else
					playsound(src, 'sound/vo/male/grumble.ogg', 30, 1)

			else
				message = "makes a noise."
				m_type = 2

		if("gag")
			if(!message)
				if(miming)
					message = "covers their mouth and puffs out their cheeks!"
					m_type = 1 // Can't we get defines for these?
				else
					if(prob(50))
						message = "dry heaves."
					else
						message = "gags."
					m_type = 1
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/gag (1).ogg', 'sound/vo/female/gag (2).ogg', 'sound/vo/female/gag (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/gag (1).ogg', 'sound/vo/male/gag (2).ogg', 'sound/vo/male/gag (3).ogg'), 30, 1)

			cloud_emote = "cloud-scream"

		if ("groan")
			if(miming)
				message = "appears to groan!"
				m_type = 1
			else
				if (!muzzled)
					message = "groans!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/groan (1).ogg', 'sound/vo/female/groan (2).ogg', 'sound/vo/female/groan (3).ogg', 'sound/vo/male/groan (4).ogg', 'sound/vo/male/groan (5).ogg'), 30)
					else
						playsound(src, pick('sound/vo/male/groan (1).ogg', 'sound/vo/male/groan (2).ogg', 'sound/vo/male/groan (3).ogg', 'sound/vo/male/groan (4).ogg', 'sound/vo/male/groan (5).ogg'), 30)

				else
					message = "makes a loud noise."
					m_type = 2

		if ("moan")
			if(miming)
				message = "appears to moan!"
				m_type = 1
			else
				message = "moans!"
				m_type = 2
				if(get_sex() == FEMALE)
					playsound(src, pick('sound/vo/female/painmoan (5).ogg', 'sound/vo/female/painmoan (6).ogg', 'sound/vo/female/painmoan (8).ogg'), 30)
				else
					playsound(src, pick('sound/vo/male/moan (1).ogg', 'sound/vo/male/moan (2).ogg', 'sound/vo/male/moan (3).ogg'), 30)

		if ("jump")
			if (!muzzled)
				if(get_sex() == FEMALE)
					playsound(src, 'sound/vo/female/jump.ogg', 30)
				else
					playsound(src, 'sound/vo/male/jump.ogg', 30)

		if ("attack")
			if (!muzzled)
				if(get_sex() == FEMALE)
					playsound(src, pick('sound/vo/female/attack (2).ogg', 'sound/vo/female/attack (3).ogg', 'sound/vo/female/attack (4).ogg', 'sound/vo/female/attack (5).ogg', 'sound/vo/female/attack (6).ogg', 'sound/vo/female/attack (7).ogg', 'sound/vo/female/attack (8).ogg', 'sound/vo/female/attack (9).ogg', 'sound/vo/female/attack (10).ogg', 'sound/vo/female/attack (11).ogg'), 30, 1)
				else
					playsound(src, pick('sound/vo/male/attack (4).ogg', 'sound/vo/male/attack (5).ogg', 'sound/vo/male/attack (6).ogg', 'sound/vo/male/attack (7).ogg', 'sound/vo/male/attack (8).ogg', 'sound/vo/male/attack (9).ogg', 'sound/vo/male/attack (10).ogg', 'sound/vo/male/attack (11).ogg', 'sound/vo/male/attack (12).ogg', 'sound/vo/male/attack (13).ogg'), 30, 1)

		if ("pant")
			if (miming)
				message = "looks winded."
				m_type = 1
			else
				if (!muzzled)
					message = "pants for breath."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/fatigue (1).ogg', 'sound/vo/female/fatigue (2).ogg', 'sound/vo/female/fatigue (3).ogg'), 30, 0)
					else
						playsound(src, pick('sound/vo/male/fatigue (1).ogg', 'sound/vo/male/fatigue (2).ogg'), 30, 0)

		if ("johnny")
			var/M
			if (param)
				M = param
			if (!M)
				param = null
			else
				if(miming)
					message = "takes a drag from a cigarette and blows \"[M]\" out in smoke."
					m_type = 1
				else
					message = "says, \"[M], please. He had a family.\" [src.name] takes a drag from a cigarette and blows his name out in smoke."
					m_type = 2

		if ("point")
			if (!src.restrained())
				var/mob/M = null
				if (param)
					for (var/atom/A as mob|obj|turf|area in view(null, null))
						if (param == A.name)
							M = A
							break

				if (!M)
					message = "points."
					playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

				else
					pointed(M)

				if (M)
					message = "points to [M]."
					playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

				else
			m_type = 1

		if ("raise")
			if (!src.restrained())
				message = "raises a hand."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if("shake")
			message = "shakes [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] head."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("shrug")
			message = "shrugs."
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("signal")
			if (!src.restrained())
				var/t1 = round(text2num(param))
				if (isnum(t1))
					if (t1 <= 5 && (!src.r_hand || !src.l_hand))
						message = "raises [t1] finger\s."
					else if (t1 <= 10 && (!src.r_hand && !src.l_hand))
						message = "raises [t1] finger\s."
			m_type = 1

		if ("smile")
			message = "smiles."
			m_type = 1

		if ("shiver")
			message = "shivers."
			m_type = 2
			if(miming)
				m_type = 1

		if ("pale")
			message = "goes pale for a second."
			m_type = 1

		if ("tremble")
			message = "trembles in fear!"
			m_type = 1
			playsound(loc, 'sound/misc/inventory/short_1.ogg', 80, 1)

		if ("sneeze")
			if (miming)
				message = "sneezes."
				m_type = 1
			else
				if (!muzzled)
					message = "sneezes."
					m_type = 2
				else
					message = "makes a strange noise."
					m_type = 2

		if ("snap")
			if (!src.restrained())
				message = "snaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] fingers."
				m_type = 2
				playsound(loc, 'sound/vo/generic/fsnap1.ogg', 80, 1)
				if(miming)
					m_type = 1

		if ("snap2")
			if (!src.restrained())
				message = "snaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] fingers."
				m_type = 2
				playsound(loc, 'sound/vo/generic/fsnap2.ogg', 80, 1)
				if(miming)
					m_type = 1

		if ("snap3")
			if (!src.restrained())
				message = "snaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] fingers."
				m_type = 2
				playsound(loc, 'sound/vo/generic/fsnap3.ogg', 80, 1)
				if(miming)
					m_type = 1

		if ("shh")
			if (miming)
				message = "shushes."
				m_type = 1
			else
				if (!muzzled)
					message = "shushes."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/vo/female/shh.ogg', 30, 1)
					else
						playsound(src, 'sound/vo/male/shh.ogg', 30, 1)

		if ("hmm")
			if (miming)
				message = "ponders."
				m_type = 1
			else
				if (!muzzled)
					message = "ponders."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/vo/female/hmm.ogg', 30, 1)
					else
						playsound(src, 'sound/vo/male/hmm.ogg', 30, 1)

		if ("hmph")
			if (miming)
				message = "pouts!"
				m_type = 1
			else
				if (!muzzled)
					message = "pouts!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/hmph (1).ogg', 'sound/vo/female/hmph (2).ogg'), 30, 0)
					else
						playsound(src, pick('sound/vo/male/hmph (1).ogg', 'sound/vo/male/hmph (2).ogg'), 30, 0)

		if ("huh")
			if (miming)
				message = "looks confused!"
				m_type = 1
			else
				if (!muzzled)
					message = "notices!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/huh (1).ogg', 'sound/vo/female/huh (2).ogg', 'sound/vo/female/huh (3).ogg'), 30, 0)
					else
						playsound(src, pick('sound/vo/male/huh.ogg', 'sound/vo/male/huh (2).ogg', 'sound/vo/male/huh (3).ogg'), 30, 0)
			cloud_emote = "cloud-scream"

		if ("hum")
			if (miming)
				message = "pretends to make music."
				m_type = 1
			else
				if (!muzzled)
					message = "hums"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/hum (1).ogg', 'sound/vo/female/hum (2).ogg', 'sound/vo/female/hum (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/hum (1).ogg', 'sound/vo/male/hum (2).ogg', 'sound/vo/male/hum (3).ogg'), 30, 1)

		if ("spit")
			if (miming)
				message = "spits!"
				m_type = 1
			else
				if (!muzzled)
					message = "spits!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/vo/female/spit.ogg', 30, 1)
					else
						playsound(src, 'sound/vo/male/spit.ogg', 30, 1)

		if ("sniff")
			message = "sniffs."
			m_type = 2
			if(miming)
				m_type = 1

		if ("snore")
			if (miming)
				message = "sleeps soundly."
				m_type = 1
			else
				if (!muzzled)
					message = "snores."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/snore (1).ogg', 'sound/vo/female/snore (2).ogg', 'sound/vo/female/snore (3).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/snore (1).ogg', 'sound/vo/male/snore (2).ogg', 'sound/vo/male/snore (3).ogg'), 30, 1)

				else
					message = "makes a noise."
					m_type = 2

		if ("whimper")
			if (miming)
				message = "appears hurt."
				m_type = 1
			else
				if (!muzzled)
					message = "whimpers."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/whimper (1).ogg', 'sound/vo/female/whimper (2).ogg', 'sound/vo/female/whimper (3).ogg'), 30)
					else
						playsound(src, pick('sound/vo/male/whimper (1).ogg', 'sound/vo/male/whimper (2).ogg', 'sound/vo/male/whimper (3).ogg'), 30)

				else
					message = "makes a weak noise."
					m_type = 2

		if ("whistle")
			if (miming)
				message = "silently pretends to whistle."
				m_type = 1
			else
				if (!muzzled)
					message = "whistles."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/whistle (1).ogg', 'sound/vo/female/whistle (2).ogg', 'sound/vo/female/whistle (3).ogg', 'sound/vo/female/whistle (4).ogg', 'sound/vo/female/whistle (5).ogg'), 30, 0)
					else
						playsound(src, pick('sound/vo/male/whistle (1).ogg', 'sound/vo/male/whistle (2).ogg', 'sound/vo/male/whistle (3).ogg'), 30, 0)


		if ("wink")
			message = "winks."
			m_type = 1
			playsound(loc, 'sound/vo/generic/blink.ogg', 80, 1)

		if ("yawn")
			if (!muzzled)
				message = "yawns."
				m_type = 2
				if(get_sex() == FEMALE)
					playsound(src, pick('sound/vo/female/yawn (1).ogg', 'sound/vo/female/yawn (2).ogg', 'sound/vo/female/yawn (3).ogg'), 30, 1)
				else
					playsound(src, pick('sound/vo/male/yawn (1).ogg', 'sound/vo/male/yawn (2).ogg'), 30, 1)

				if(miming)
					m_type = 1

		if ("collapse")
			Paralyse(2)
			message = "collapses!"
			playsound(loc, 'sound/misc/inventory/short_2.ogg', 80, 1)
			m_type = 2
			if(miming)
				m_type = 1

		if("hug")
			m_type = 1
			if (!src.restrained())
				var/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M == src)
					M = null

				if (M)
					message = "hugs [M]."
				else
					message = "hugs [get_visible_gender() == MALE ? "himself" : get_visible_gender() == FEMALE ? "herself" : "themselves"]."

		if ("handshake")
			m_type = 1
			if (!src.restrained() && !src.r_hand)
				var/mob/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M == src)
					M = null

				if (M)
					if (M.canmove && !M.r_hand && !M.restrained())
						message = "shakes hands with [M]."
					else
						message = "holds out [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] hand to [M]."

		if("dap")
			m_type = 1
			if (!src.restrained())
				var/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M)
					message = "gives daps to [M]."
				else
					message = "sadly can't find anybody to give daps to, and daps [get_visible_gender() == MALE ? "himself" : get_visible_gender() == FEMALE ? "herself" : "themselves"]. Shameful."

		if ("scream")
			if (miming)
				message = "acts out a scream!"
				m_type = 1
			else
				if (!muzzled)
					message = "screams!"
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, pick('sound/vo/female/scream (1).ogg', 'sound/vo/female/scream (2).ogg', 'sound/vo/female/scream (3).ogg', 'sound/vo/female/scream (4).ogg', 'sound/vo/female/scream (5).ogg', 'sound/vo/female/scream (6).ogg'), 30, 1)
					else
						playsound(src, pick('sound/vo/male/scream (1).ogg', 'sound/vo/male/scream (2).ogg', 'sound/vo/male/scream (3).ogg'), 30, 1)
				else
					message = "makes a very loud noise."
					m_type = 2
			cloud_emote = "cloud-scream"

		if ("help")
			to_chat(src, {"VISIBLE: blink, blink_r, blush, bow-(none)/mob, burp, collapse, custom, drool, eyebrow, frown, handshake, hug-(none)/mob, glare-(none)/mob,
grin, look-(none)/mob, mumble, nod, pale, point-atom, raise, salute, shake, shiver, shrug, signal-#1-10, smile, sneeze, sniff, stare-(none)/mob, tremble, twitch, twitch_s,
wink NOISES: attn(whitle), choke, chuckle, clear, clap, cough, cry, deathgasp, gasp, gasp2, giggle, groan, grumble, hmm, huh, hum, hmph, laugh, moan, pain, pant, psst, shh, sigh, snap, snap2, snap3, snore, spit, whimper, whistle, yawn"})

		else
			to_chat(src, "\blue Unusable emote '[act]'. Say *help for a list.")





	if (message)
		log_emote("[name]/[key] : [message]")
		custom_emote(m_type, message)

	if(cloud_emote)
		var/image/emote_bubble = image('icons/mob/emote.dmi', src, cloud_emote, ABOVE_MOB_LAYER)
		flick_overlay(emote_bubble, clients, 30)
		QDEL_IN(emote_bubble, 3 SECONDS)


/mob/living/carbon/human/verb/pose()
	set name = "Set Pose"
	set desc = "Sets a description which will be shown when someone examines you."
	set category = "IC"

	if(suppress_communication)
		return FALSE

	pose =  sanitize(input(usr, "This is [src]. [get_visible_gender() == MALE ? "He" : get_visible_gender() == FEMALE ? "She" : "They"] [get_visible_gender() == NEUTER ? "are" : "is"]...", "Pose", null)  as text)

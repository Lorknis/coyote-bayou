//Fallout 13 main windows directory

/obj/structure/window/fulltile/ruins
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "ruinswindow"
	dir = 5
	max_integrity = 20
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/ruins/broken
	icon_state = "ruinswindowbroken"
	max_integrity = 1

/obj/structure/window/fulltile/house
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "housewindow"
	dir = 5
	max_integrity = 40
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/house/broken
	icon_state = "housewindowbroken"
	max_integrity = 1

/obj/structure/window/fulltile/wood
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "woodwindow"
	dir = 5
	max_integrity = 50
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/wood/broken
	icon_state = "woodwindowbroken"
	max_integrity = 1

/obj/structure/window/fulltile/store
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "storewindowhorizontal"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/sheet/mineral/wood))
		var/obj/item/stack/sheet/mineral/wood/Z = W
		if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
			to_chat(user, span_warning("This window is already barricaded!"))
			return
		if(!anchored)
			to_chat(user, span_warning("The window must be firmly anchored to the ground!"))
			return
		if(Z.get_amount() < 3)
			to_chat(user, span_warning("You need atleast 3 wooden planks to reinforce this window!"))
			return
		else
			to_chat(user, span_notice("You start adding [Z] to [src]..."))
			if(do_after(user, 50, target=src))
				if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
					to_chat(user, span_warning("This window is already barricaded!"))
					return
				if(!anchored)
					to_chat(user, span_warning("The window must be firmly anchored to the ground!"))
					return
				if(Z.get_amount() < 3)
					to_chat(user, span_warning("You need atleast 3 wooden planks to reinforce this window!"))
					return
				Z.use(3)
				new /obj/structure/barricade/wooden/planks(get_turf(src))
				user.visible_message(span_notice("[user] reinforces the window with some planks"), span_notice("You reinforce the window with some planks."))
				return
	else if(!istype(W, /obj/item/stack/sheet/mineral/wood))
		if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
			for(var/obj/structure/barricade/wooden/planks/P in loc)
				P.attackby(W, user, params)
				return TRUE
		else
			return ..()

//From Roguetown

/obj/structure/window/fulltile/stainedglass
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "window-solid"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/woodwindoworange
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "woodwindow"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/woodwindowwhite
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "w-woodwindow"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/woodwindowmoonlight
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "sliding-moonlight-closed"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/woodwindowyellow
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "sliding-electric-closed"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/stainedsilver
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "stained-silver"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/stainedyellow
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "stained-yellow"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/stainedglass/stainedzizo
	icon = 'modular_roguetown/misc/structure.dmi'
	icon_state = "stained-zizo"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3

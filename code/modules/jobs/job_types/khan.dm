/datum/job/khan //do NOT use this for anything, it's just to store faction datums
	department_flag = KHAN
	selection_color = "#ff915e"
	faction = FACTION_KHAN
	exp_type = EXP_TYPE_KHAN
	access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_MINING, ACCESS_GATEWAY)
	forbids = "THE KHANATE DISCOURAGES: Dishonorable actions, Weakness, Abuse of power or status, sabotaging other Khans."
	enforces = "THE KHANATE ENCOURAGES: Bravery, Honor, Displays of strenght, Brotherhood."

/datum/outfit/job/khan
	name = "Khan"
	jobtype = /datum/job/khan
	suit = /obj/item/clothing/suit/toggle/labcoat/khan_jacket
	id = /obj/item/card/id/khantattoo
	ears = /obj/item/radio/headset/headset_khans
	head = /obj/item/clothing/head/helmet/f13/khan/bandana
	shoes = /obj/item/clothing/shoes/f13/military/khan
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/old
	uniform = /obj/item/clothing/under/f13/khan
	r_hand = /obj/item/book/granter/trait/selection
	r_pocket = /obj/item/flashlight/flare
	box = /obj/item/storage/survivalkit/tribal/chief
	box_two = /obj/item/storage/survivalkit/medical/tribal
	gloves = /obj/item/melee/unarmed/brass/spiked
	backpack_contents = list(
		/obj/item/storage/bag/money/small/khan = 1
		)

/datum/outfit/job/khan/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_khanate)

/datum/outfit/job/khan/greatkhan
	jobtype = /datum/job/khan/greatkhan

/datum/outfit/job/khanleader/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_khanate)

/datum/job/khan/greatkhan
	title = "Great Khan"
	flag = F13GREATKHAN
	display_order = JOB_DISPLAY_ORDER_PUSHER
	faction = FACTION_KHAN
	total_positions = 8
	spawn_positions = 8
	description = "You are a Great Khan, a warrior of the Khans who has passed the Trial of Position within the arena and earned their place. While your combat skills are to be respected, remember your position as a soldier - protect the Khan Fortress and Bighorn, show loyalty, and you may find chances yet to prove your greater worth."
	supervisors = "Your tribe"
	selection_color = "#ff915e"
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan/greatkhan

	loadout_options = list(
		/datum/outfit/loadout/enforcer,
		/datum/outfit/loadout/khanskirmisher,
		/datum/outfit/loadout/khandrug,
		)

//=========================================================== LOADOUT DATUMS ===========================================================

/datum/outfit/loadout/enforcer
	name = "Enforcer"
	r_hand = /obj/item/twohanded/baseball/spiked
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

/datum/outfit/loadout/khanskirmisher
	name = "Skirmisher"
	r_hand = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	backpack_contents = list(
		/obj/item/ammo_box/magazine/uzim9mm = 3,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/storage/belt/shoulderholster = 1)

/datum/outfit/loadout/khandrug
	name = "Drug Pusher"
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/book/granter/trait/midsurgery = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/reagent_containers/pill/patch/turbo = 2)


/*ALL DEFINES RELATED TO AMMO GO HERE*/

//Caliber defines
// hi, this is Jaeger, we redid weapon calibers and damage
// reference below
#define CALIBER_COMPACT "compact rounds"
#define CALIBER_MEDIUM "medium rounds"
#define CALIBER_LONG "long rounds"
#define CALIBER_SHOTGUN "shotgun rounds"
// deprecated defines
#define CALIBER_22LR ".22LR rounds"
#define CALIBER_BEE ".22LR bee rounds"
#define CALIBER_MOUSE ".22LR mouseshot rounds"
#define CALIBER_5MM "5mm rounds"
#define CALIBER_556 "5.56mm / .223 rounds"
#define CALIBER_308 ".308 rounds"
#define CALIBER_3006 ".30-06 rounds"
#define CALIBER_9MM "9mm rounds"
#define CALIBER_10MM "10mm rounds"
#define CALIBER_14MM "14mm rounds"
//#define CALIBER_38 ".38 special rounds"
#define CALIBER_357 ".357 magnum rounds"
#define CALIBER_44 ".44 magnum rounds"
#define CALIBER_45LC ".45 LC rounds"
#define CALIBER_45ACP ".45 ACP rounds"
#define CALIBER_4570 ".45-70 rounds"
#define CALIBER_50MG ".50MG rounds"
#define CALIBER_2MM "2mmEC gauss slugs"
#define CALIBER_SHOTGUN_DEPRECATED "12 gauge shells" // added _DEPRECATED
#define CALIBER_CASELESS "4.73mm caseless"
#define CALIBER_75 ".75 gyrojets"
#define CALIBER_195 "1.95mm rounds"
#define CALIBER_712 "7.12mm rounds"
#define CALIBER_40MM "40mm rounds"
#define CALIBER_MAGNETIC "magnetic rounds"
#define CALIBER_MAGNETIC_HYPER "hypermagnetic rounds"
#define CALIBER_MUSKET_BALL "musket balls"
#define CALIBER_MUSKET_LASER "laser musket packs"
#define CALIBER_MUSKET_PLASMA "plasma musket packs"
#define CALIBER_NEEDLE "needles"
#define CALIBER_SHOTGUNNEEDLER
#define CALIBER_HNEEDLE "heavyneedle"
#define CALIBER_MININUKE "mininukes"
#define CALIBER_ROCKET "rockets"
#define CALIBER_ROCK "rocks"
#define CALIBER_SPEAR "speargun rounds"
#define CALIBER_LASERGATLING "laser gatling charges"
#define CALIBER_LASER "oldlasers"
#define CALIBER_MWS "mwses"
#define CALIBER_ARROW "arrows"
#define CALIBER_FUEL "flamer fuel"
#define CALIBER_FOAM "foam darts"
#define CALIBER_ANY "anything even remotely ammolike"
#define CALIBER_BRICK "bricks"
#define CALIBER_FLINTLOCK "blackpowder charges"
/// Caliber POW levels
/// for hobo guns scaling their explodiness to the casing fired
/// Heavier rounds than the gun can handle? more chance to POW
/// Lighter rounds? doesnt explode, shrimple as
#define CASING_POWER_NONE 0
#define CASING_POWER_LIGHT_PISTOL 1
#define CASING_POWER_MEDIUM_PISTOL 2
#define CASING_POWER_HEAVY_PISTOL 4
#define CASING_POWER_HEAVIER_PISTOL 10
#define CASING_POWER_LIGHT_RIFLE 4
#define CASING_POWER_MEDIUM_RIFLE 8
#define CASING_POWER_HEAVY_RIFLE 12
#define CASING_POWER_SHOTGUN 8
#define CASING_POWER_GRENADE 12

/// Modifiers for different loads
#define CASING_POWER_MOD_HANDLOAD 0.5
#define CASING_POWER_MOD_SURPLUS 1
#define CASING_POWER_MOD_MATCH 2

#define ZIPGUN_AMMO_CALIBERS list(\
	CALIBER_22LR,\
	CALIBER_9MM,\
	CALIBER_10MM,\
	CALIBER_357,\
	CALIBER_44,\
	CALIBER_45LC,\
	CALIBER_45ACP,\
	CALIBER_ROCK\
	)

#define AUTOPIPE_AMMO_CALIBERS list(\
	CALIBER_22LR,\
	CALIBER_9MM,\
	CALIBER_10MM,\
	CALIBER_357,\
	CALIBER_45ACP,\
	CALIBER_ROCK\
	)

#define KNUCKLEGUN_AMMO_CALIBERS list(\
	CALIBER_9MM,\
	CALIBER_10MM,\
	CALIBER_357,\
	CALIBER_44,\
	CALIBER_45ACP,\
	CALIBER_ROCK\
	)

/// this is an awful, awful idea
#define SHOTGUNBAT_AMMO_CALIBERS list(\
	CALIBER_SHOTGUN,\
	CALIBER_50MG,\
	)

#define MEDUSA_AMMO_CALIBERS list(\
	CALIBER_22LR,\
	CALIBER_9MM,\
	CALIBER_10MM,\
	CALIBER_45ACP,\
	CALIBER_357,\
	CALIBER_44,\
	)
	
GLOBAL_LIST_INIT(pipe_rifle_valid_calibers, list(
	CALIBER_22LR,
	CALIBER_5MM,
	CALIBER_556,
	CALIBER_308,
	CALIBER_3006,
	CALIBER_9MM,
	CALIBER_10MM,
	CALIBER_14MM,
	CALIBER_357,
	CALIBER_44,
	CALIBER_45LC,
	CALIBER_45ACP,
	CALIBER_4570,
	CALIBER_50MG,
	CALIBER_40MM,
	CALIBER_FOAM,
	CALIBER_MUSKET_BALL,
	CALIBER_SHOTGUN,
	CALIBER_ROCK))

GLOBAL_LIST_INIT(zipgun_valid_calibers, ZIPGUN_AMMO_CALIBERS)

GLOBAL_LIST_INIT(hobo_gun_mag_fluff, list(
	"prefix" = list("bullet","casing","cartridge","shell"),
	"suffix" = list("chamber","holder","slot","hole","thing","pit"),
	"postfix" = list("-thingy","-majig","...?"," assembly")
))

#define MAGAZINE_CALIBER_CHANGE_STEP_0 0 // use screwdriver to get to step 1
#define MAGAZINE_CALIBER_CHANGE_STEP_1 1 // used a screwdriver on it, ready for a metal part
#define MAGAZINE_CALIBER_CHANGE_STEP_2 2 // used a metal part on it, ready for welding
#define MAGAZINE_CALIBER_CHANGE_STEP_3 3 // used a welder on it, ready for a new casing

/// Material costs cus fuckin hell this shit's out of hand!
#define MATS_AMMO_GLOBAL_MULT 1

/// Bullet~
#define MATS_AMMO_BULLET_BASE (10 * MATS_AMMO_GLOBAL_MULT)
#define MATS_AMMO_BULLET_HANDLOAD_MULT 0.5
#define MATS_AMMO_BULLET_MATCH_MULT 2

#define MATS_PISTOL_LIGHT_BULLET (MATS_AMMO_BULLET_BASE * 0.5)
#define MATS_PISTOL_MEDIUM_BULLET (MATS_AMMO_BULLET_BASE * 1)
#define MATS_PISTOL_HEAVY_BULLET (MATS_AMMO_BULLET_BASE * 3)
#define MATS_RIFLE_LIGHT_BULLET (MATS_AMMO_BULLET_BASE * 2)
#define MATS_RIFLE_MEDIUM_BULLET (MATS_AMMO_BULLET_BASE * 3)
#define MATS_RIFLE_HEAVY_BULLET (MATS_AMMO_BULLET_BASE * 5)
#define MATS_SHOTGUN_BULLET (MATS_AMMO_BULLET_BASE * 3)
#define MATS_GRENADE_BULLET (MATS_AMMO_BULLET_BASE * 20)
#define MATS_ROCKET_BULLET (MATS_AMMO_BULLET_BASE * 1)
#define MATS_GAUSS_BULLET (MATS_AMMO_BULLET_BASE * 75)
#define MATS_FLINTLOCK_LIGHT_BULLET (MATS_AMMO_BULLET_BASE * 5)
#define MATS_FLINTLOCK_HEAVY_BULLET (MATS_AMMO_BULLET_BASE * 8)

/// Powder~
#define MATS_AMMO_POWDER_BASE (20 * MATS_AMMO_GLOBAL_MULT)
#define MATS_AMMO_POWDER_HANDLOAD_MULT 0.5
#define MATS_AMMO_POWDER_MATCH_MULT 1.5
/// Amount spent after firing
#define MATS_AMMO_POWDER_BURN_MULT 0.8

#define MATS_PISTOL_LIGHT_POWDER (MATS_AMMO_POWDER_BASE * 0.5)
#define MATS_PISTOL_MEDIUM_POWDER (MATS_AMMO_POWDER_BASE * 1)
#define MATS_PISTOL_HEAVY_POWDER (MATS_AMMO_POWDER_BASE * 3)
#define MATS_RIFLE_LIGHT_POWDER (MATS_AMMO_POWDER_BASE * 1)
#define MATS_RIFLE_MEDIUM_POWDER (MATS_AMMO_POWDER_BASE * 2)
#define MATS_RIFLE_HEAVY_POWDER (MATS_AMMO_POWDER_BASE * 5)
#define MATS_SHOTGUN_POWDER (MATS_AMMO_POWDER_BASE * 5)
#define MATS_GRENADE_POWDER (MATS_AMMO_POWDER_BASE * 50)
#define MATS_ROCKET_POWDER (MATS_AMMO_POWDER_BASE * 100)
#define MATS_GAUSS_POWDER 0
#define MATS_FLINTLOCK_LIGHT_POWDER (MATS_AMMO_POWDER_BASE * 5)
#define MATS_FLINTLOCK_HEAVY_POWDER (MATS_AMMO_POWDER_BASE * 8)

/// Casing~
#define MATS_CASING_BASE (20 * MATS_AMMO_GLOBAL_MULT)
#define MATS_AMMO_CASING_HANDLOAD_MULT 0.5
#define MATS_AMMO_CASING_MATCH_MULT 2

#define MATS_PISTOL_LIGHT_CASING (MATS_CASING_BASE * 0.5)
#define MATS_PISTOL_MEDIUM_CASING (MATS_CASING_BASE * 1)
#define MATS_PISTOL_HEAVY_CASING (MATS_CASING_BASE * 3)
#define MATS_RIFLE_LIGHT_CASING (MATS_CASING_BASE * 1)
#define MATS_RIFLE_MEDIUM_CASING (MATS_CASING_BASE * 2)
#define MATS_RIFLE_HEAVY_CASING (MATS_CASING_BASE * 3)
#define MATS_SHOTGUN_CASING (MATS_CASING_BASE * 5)
#define MATS_GRENADE_CASING (MATS_CASING_BASE * 20)
#define MATS_ROCKET_CASING (MATS_CASING_BASE * 100)
#define MATS_GAUSS_CASING 0

/// Ammo boxes
#define MATS_BOX_BASE 1000

#define MATS_PISTOL_SMALL_BOX (MATS_BOX_BASE * 0.5)
#define MATS_PISTOL_MEDIUM_BOX (MATS_BOX_BASE * 1)
#define MATS_PISTOL_HEAVY_BOX (MATS_BOX_BASE * 1)
#define MATS_RIFLE_SMALL_BOX (MATS_BOX_BASE * 1)
#define MATS_RIFLE_MEDIUM_BOX (MATS_BOX_BASE * 2)
#define MATS_RIFLE_HEAVY_BOX (MATS_BOX_BASE * 3)
#define MATS_SHOTGUN_BOX (MATS_BOX_BASE * 1)

/// Magazines!
#define MATS_MAGAZINE_BASE 2000

#define MATS_SMALL_PISTOL_MAGAZINE (MATS_MAGAZINE_BASE * 0.5)
#define MATS_MEDIUM_PISTOL_MAGAZINE (MATS_MAGAZINE_BASE * 1)
#define MATS_HEAVY_PISTOL_MAGAZINE (MATS_MAGAZINE_BASE * 1)
#define MATS_PISTOL_SPEEDLOADER (MATS_MAGAZINE_BASE * 0.5)
#define MATS_TUBE (MATS_MAGAZINE_BASE * 1)
#define MATS_STRIPPER (MATS_MAGAZINE_BASE * 0.5)

#define MATS_SMG (MATS_MAGAZINE_BASE * 4)
#define MATS_SMG_EXTENDED (MATS_MAGAZINE_BASE * 8)

#define MATS_LIGHT_SMALL_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 1)
#define MATS_LIGHT_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 2)
#define MATS_LIGHT_LARGE_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 4)
#define MATS_LIGHT_EXTENDED_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 6)
#define MATS_LIGHT_BRICK_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 8)
#define MATS_LIGHT_MEGA_CAN_MAGAZINE (MATS_MAGAZINE_BASE * 16)

#define MATS_MEDIUM_SMALL_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 2)
#define MATS_MEDIUM_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 4)
#define MATS_MEDIUM_EXTENDED_RIFLE_MAGAZINE (MATS_MAGAZINE_BASE * 8)
#define MATS_MEDIUM_BELT_MAGAZINE (MATS_MAGAZINE_BASE * 16)

#define MATS_SHOTGUN_MAGAZINE (MATS_MAGAZINE_BASE * 8)

#define MATS_MISC (MATS_MAGAZINE_BASE * 8)

/// Multiplier for ammolathes
#define MATS_AMMO_GLOBAL_COST_MULT 1
#define MATS_AMMO_METAL_COST_MULT (1.5 * MATS_AMMO_GLOBAL_COST_MULT)
#define MATS_AMMO_POWDER_COST_MULT (1 * MATS_AMMO_GLOBAL_COST_MULT)
#define MATS_AMMO_TIT_COST_MULT (2 * MATS_AMMO_GLOBAL_COST_MULT)

GLOBAL_LIST_INIT(ammo_material_multipliers, list(
	/datum/material/iron = MATS_AMMO_METAL_COST_MULT,
	/datum/material/blackpowder = MATS_AMMO_POWDER_COST_MULT,
	/datum/material/titanium = MATS_AMMO_TIT_COST_MULT,
))

/// Just so I dont have to do bespoke shit for deducting powder and bullet costs
#define BULLET_IS_LIGHT_PISTOL "light_pistol"
#define BULLET_IS_MEDIUM_PISTOL "medium_pistol"
#define BULLET_IS_HEAVY_PISTOL "heavy_pistol"
#define BULLET_IS_LIGHT_RIFLE "light_rifle"
#define BULLET_IS_MEDIUM_RIFLE "medium_rifle"
#define BULLET_IS_HEAVY_RIFLE "heavy_rifle"
#define BULLET_IS_SHOTGUN "shotgun_shell"
#define BULLET_IS_GRENADE "grenade_shell"
#define BULLET_IS_GAUSS "gauss_thing"

#define BULLET_IS_HANDLOAD 1
#define BULLET_IS_RUBBER 1
#define BULLET_IS_SURPLUS 2
#define BULLET_IS_MATCH 3

/////// LE CORBS

// ANATOMY OF A CORB STATE
// "[corb]-[suffix]-[part]-[key]"

#define SUFFIX_FULL    "full" // mandatory Full state for icons
#define SUFFIX_EMPTY   "empty" // mandatory Empty state for icons
#define SUFFIX_PROJ    "projectile"
#define SUFFIX_MAGAZINE_DEFAULT "default"
#define SUFFIX_PARTIAL "partial"

#define CORB_BULLET    "bullet"
#define CORB_BOX       "box"
#define CORB_CRATE     "crate"
#define CORB_MAGAZINE  "magazine"

#define PART_BROAD     "broad"
#define PART_COUNT     "count"
#define PART_PERCENT   "percent"

#define BULLET_FULL_STATE                   "[CORB_BULLET]-[SUFFIX_FULL]"
#define BULLET_EMPTY_STATE                  "[CORB_BULLET]-[SUFFIX_EMPTY]"
#define BULLET_PROJ_STATE                   "[CORB_BULLET]-[SUFFIX_PROJ]"
#define BOX_FULL_STATE                      "[CORB_BOX]-[SUFFIX_FULL]"
#define BOX_EMPTY_STATE                     "[CORB_BOX]-[SUFFIX_EMPTY]"
#define CRATE_FULL_STATE                    "[CORB_CRATE]-[SUFFIX_FULL]"
#define CRATE_EMPTY_STATE                   "[CORB_CRATE]-[SUFFIX_EMPTY]"
#define BOX_PARTIAL_STATE                   "[CORB_BOX]-[SUFFIX_PARTIAL]-[PART_BROAD]"
#define CRATE_PARTIAL_STATE                 "[CORB_CRATE]-[SUFFIX_PARTIAL]-[PART_BROAD]"
#define BOX_PARTIAL_COUNT_STATE             "[CORB_CRATE]-[SUFFIX_PARTIAL]-[PART_COUNT]"
#define CRATE_PARTIAL_COUNT_STATE           "[CORB_CRATE]-[SUFFIX_PARTIAL]-[PART_COUNT]"
#define BOX_PARTIAL_PERCENT_STATE           "[CORB_CRATE]-[SUFFIX_PARTIAL]-[PART_PERCENT]"
#define CRATE_PARTIAL_PERCENT_STATE         "[CORB_CRATE]-[SUFFIX_PARTIAL]-[PART_PERCENT]"
#define MAGAZINE_FULL_STATE                 "[CORB_MAGAZINE]-[SUFFIX_FULL]"
#define MAGAZINE_EMPTY_STATE                "[CORB_MAGAZINE]-[SUFFIX_EMPTY]"
#define MAGAZINE_PARTIAL_STATE(pfx)         "[pfx]-[SUFFIX_PARTIAL]-[PART_BROAD]"
#define MAGAZINE_PARTIAL_COUNT_STATE(pfx)   "[pfx]-[SUFFIX_PARTIAL]-[PART_COUNT]"
#define MAGAZINE_PARTIAL_PERCENT_STATE(pfx) "[pfx]-[SUFFIX_PARTIAL]-[PART_PERCENT]"

#define MAG_TOKEN_MAX_AMMO "%MAXAMMO%"


// #define BOX_PARTIAL_COUNT_STATE(count) "[CORB_BOX]-[PART_COUNT]-[count]"
// #define CRATE_PARTIAL_COUNT_STATE(count) "[CORB_CRATE]-[PART_COUNT]-[count]"
// #define BOX_PARTIAL_PERCENT_STATE(percent) "[CORB_BOX]-[PARTIAL_PERCENT]-[percent]"
// #define CRATE_PARTIAL_PERCENT_STATE(percent) "[CORB_CRATE]-[PARTIAL_PERCENT]-[percent]"





#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day

///displays the current time into the round, with a lot of extra code just there for ensuring it looks okay after an entire day passes
#define ROUND_TIME ( "[world.time - SSticker.round_start_time > MIDNIGHT_ROLLOVER ? "[round(world.time - SSticker.round_start_time/MIDNIGHT_ROLLOVER)]:[worldtime2text()]" : worldtime2text()]" )

#define JANUARY		1
#define FEBRUARY	2
#define MARCH		3
#define APRIL		4
#define MAY			5
#define JUNE		6
#define JULY		7
#define AUGUST		8
#define SEPTEMBER	9
#define OCTOBER		10
#define NOVEMBER	11
#define DECEMBER	12

//Select holiday names -- If you test for a holiday in the code, make the holiday's name a define and test for that instead
#define NEW_YEAR				"New Year"
#define VALENTINES				"Valentine's Day"
#define APRIL_FOOLS				"April Fool's Day"
#define EASTER					"Easter"
#define PRIDE_MONTH				"Pride Month"
#define HALLOWEEN				"Halloween"
#define CHRISTMAS				"Christmas"
#define FESTIVE_SEASON			"Festive Season"
#define POTLUCK					"Pandimensional Potluck"

/*

Days of the week to make it easier to reference them.

When using time2text(), please use "DDD" to find the weekday. Refrain from using "Day"

*/

#define MONDAY		"Mon"
#define TUESDAY		"Tue"
#define WEDNESDAY	"Wed"
#define THURSDAY	"Thu"
#define FRIDAY		"Fri"
#define SATURDAY	"Sat"
#define SUNDAY		"Sun"

#define WEEKDAY2NUM(D) (D == SUNDAY ? 1 : D == MONDAY ? 2 : D == TUESDAY ? 3 : D == WEDNESDAY ? 4 : D == THURSDAY ? 5 : D == FRIDAY ? 6 : 7) //this looks ugly, but switch statements can't be used as vars, so *shrug

#define SECONDS *10

#define MINUTES SECONDS*60

#define HOURS MINUTES*60

#define DAYS HOURS*24

#define WEEKS DAYS*7 // hope you like float imprecision

#define YEARS DAYS*365 // hope you like float imprecision, but more so

#define MILLISECONDS * 0.01

#define TICKS *world.tick_lag

#define DS2TICKS(DS) ((DS)/world.tick_lag)

#define MS2DS(T) ((T) MILLISECONDS)

#define TICKS2DS(T) ((T) TICKS)

#define GAMETIMESTAMP(format, wtime) time2text(wtime, format)
#define WORLDTIME2TEXT(format) GAMETIMESTAMP(format, world.time)
#define WORLDTIMEOFDAY2TEXT(format) GAMETIMESTAMP(format, world.timeofday)
#define TIME_STAMP(format, showds) showds ? "[WORLDTIMEOFDAY2TEXT(format)]:[world.timeofday % 10]" : WORLDTIMEOFDAY2TEXT(format)
#define STATION_TIME(display_only, wtime) ((((wtime - SSticker.round_start_time) * SSticker.station_time_rate_multiplier) + SSticker.gametime_offset) % 864000) - (display_only? GLOB.timezoneOffset : 0)
#define STATION_TIME_TIMESTAMP(format, wtime) time2text(STATION_TIME(TRUE, wtime), format)

/// why is this here? Well, E comes before T, and economy starts with an E, so...
#define QUEST_TAX_DATE_OFFSET ((24 YEARS) + (100 DAYS)) // its May 2024, byond time is 2000, so 24 and a half years. ALso PST
/// Takes in a number of days, shaves off 23 goshdarned years, then divides it by a day to output a number of days relative to today....ish
/// shaves off the 23 years because world.realtime is around 7 billion, which makes that float a bit too imprecise somehow
#define REALTIME2QDAYS(x) (floor((world.realtime + ((x) * (1 DAYS)) - (QUEST_TAX_DATE_OFFSET)) / (1 DAYS)))
#define REALTIME2QDCS(x) (floor((world.realtime + ((x) * (1 DAYS)) - (QUEST_TAX_DATE_OFFSET))))
#define QDAY_TODAY REALTIME2QDAYS(0) // today
#define QDAY_TOMORROW REALTIME2QDAYS(1) // tomorrow
#define QDAY_YESTERDAY REALTIME2QDAYS(-1) // yesterday
#define QDAY_INACTIVITY_START REALTIME2QDAYS(-2) // 2 days ago
#define QDAY_INACTIVITY_CAP REALTIME2QDAYS(-8) // 1 week past the first day of inactivity
#define QDAY_LOGIN_SPREE_CAP REALTIME2QDAYS(-7) // 1 week past the first day of a login spree
/// Takes in a QDAY and returns how many days ago it was
#define QDAYS2DAYSAGO(x) "[floor((QDAY_TODAY - (x)))] day(s) ago"
#define SAVABLE_TIME(RT) (RT - QUEST_TAX_DATE_OFFSET)
#define LOADABLE_TIME(ST) (ST + QUEST_TAX_DATE_OFFSET)
#define SAVABLE_TODAY SAVABLE_TIME(world.realtime)
#define LOADABLE_TODAY LOADABLE_TIME(world.realtime)


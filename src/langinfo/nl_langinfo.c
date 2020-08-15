#include <nl_types.h>
#include <langinfo.h>
#include <stddef.h>

char * nl_langinfo(nl_item item)
{
	/** @arg_one_of:
	CODESET		LC_CTYPE	Codeset name
	D_T_FMT		LC_TIME		String for formatting date and time
	D_FMT		LC_TIME		Date format string
	T_FMT		LC_TIME		Time format string
	T_FMT_AMPM	LC_TIME		a.m. or p.m. time format string
	AM_STR		LC_TIME		Ante-meridiem affix
	PM_STR		LC_TIME		Post-meridiem affix
	DAY_1		LC_TIME		Name of the 1st day of the week (Sunday)
	DAY_2		LC_TIME		Name of the 2nd day of the week
	DAY_3		LC_TIME		Name of the 3rd day of the week
	DAY_4		LC_TIME		Name of the 4th day of the week
	DAY_5		LC_TIME		Name of the 5th day of the week
	DAY_6		LC_TIME		Name of the 6th day of the week
	DAY_7		LC_TIME		Name of the 7th day of the week
	ABDAY_1		LC_TIME		Abbreviated name of 1st day (Sun)
	ABDAY_2		LC_TIME		Abbreviated name of 2nd day
	ABDAY_3		LC_TIME		Abbreviated name of 3rd day
	ABDAY_4		LC_TIME		Abbreviated name of 4th day
	ABDAY_5		LC_TIME		Abbreviated name of 5th day
	ABDAY_6		LC_TIME		Abbreviated name of 6th day
	ABDAY_7		LC_TIME		Abbreviated name of 7th day
	MON_1		LC_TIME		Name of the 1st month of the year
	MON_2		LC_TIME		Name of the 2nd month of the year
	MON_3		LC_TIME		Name of the 3rd month of the year
	MON_4		LC_TIME		Name of the 4th month of the year
	MON_5		LC_TIME		Name of the 5th month of the year
	MON_6		LC_TIME		Name of the 6th month of the year
	MON_7		LC_TIME		Name of the 7th month of the year
	MON_8		LC_TIME		Name of the 8th month of the year
	MON_9		LC_TIME		Name of the 9th month of the year
	MON_10		LC_TIME		Name of the 10th month of the year
	MON_11		LC_TIME		Name of the 11th month of the year
	MON_12		LC_TIME		Name of the 12th month of the year
	ABMON_1		LC_TIME		Abbreviated name of the 1st month
	ABMON_2		LC_TIME		Abbreviated name of the 2nd month
	ABMON_3		LC_TIME		Abbreviated name of the 3rd month
	ABMON_4		LC_TIME		Abbreviated name of the 4th month
	ABMON_5		LC_TIME		Abbreviated name of the 5th month
	ABMON_6		LC_TIME		Abbreviated name of the 6th month
	ABMON_7		LC_TIME		Abbreviated name of the 7th month
	ABMON_8		LC_TIME		Abbreviated name of the 8th month
	ABMON_9		LC_TIME		Abbreviated name of the 9th month
	ABMON_10	LC_TIME		Abbreviated name of the 10th month
	ABMON_11	LC_TIME		Abbreviated name of the 11th month
	ABMON_12	LC_TIME		Abbreviated name of the 12th month
	ERA		LC_TIME		Era description segments
	ERA_D_FMT	LC_TIME		Era date format string
	ERA_D_T_FMT	LC_TIME		Era date and time format string
	ERA_T_FMT	LC_TIME		Era time format string
	ALT_DIGITS	LC_TIME		Alternative symbols for digits
	RADIXCHAR	LC_NUMERIC	Radix character
	THOUSEP		LC_NUMERIC	Separator for thousands
	YESEXPR		LC_MESSAGES	Affirmative response expression
	NOEXPR		LC_MESSAGES	Negative response expression
	CRNCYSTR	LC_MONETARY	Local currency symbol
	*/
	return NULL;
}

/*
XOPEN(4)
POSIX(200809)
*/

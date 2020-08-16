struct tm {
	int tm_sec;	/* Seconds [0,60] */
	int tm_min;	/* Minutes [0, 59] */
	int tm_hour;	/* Hour [0,23] */
	int tm_mday;	/* Day of the month [1,31] */
	int tm_mon;	/* Month of the year [0,11] */
	int tm_year;	/* Years since 1900 */
	int tm_wday;	/* Day of the week [0,6] (Sunday = 0) */
	int tm_yday;	/* Day of the year [0,365] */
	int tm_isdst;	/* Daylight Saving Time flag */
};

/** broken-down time **/

/***
is used to represent time broken down into its individual components.
***/

/*
STDC(1)
*/

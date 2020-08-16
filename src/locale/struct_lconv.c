struct lconv {
	/** The character that separates the whole and decimal portions of non-monetary values **/
	char *decimal_point;		/* "." */
	/** The character that separates groups of digits in the whole portion of non-monetary values **/
	char *thousands_sep;		/* "" */
	/** A string indicating how to group digits of monetary values */
	char *grouping;			/* "" */
	/** The three character ISO 4217 currency symbol of the current locale, followed by a fourth separating character **/
	char *int_curr_symbol;		/* "" */
	/** The locale currency symbol in the current locale **/
	char *currency_symbol;		/* "" */
	/** The character used for decimal points in monetary values **/
	char *mon_decimal_point;	/* "" */
	/** The character separating digit groups in monetary values **/
	char *mon_thousands_sep;	/* "" */
	/** A string indicating how to group digits in monetary values **/
	char *mon_grouping;		/* "" */
	/** A string to indicate positive monetary values **/
	char *positive_sign;		/* "" */
	/** A string to indicate negative monetary values **/
	char *negative_sign;		/* "" */
	/** The number of digits after the decimal point in international monetary values **/
	char int_frac_digits;		/* CHAR_MAX */
	/** The number of digits after the decimal point in monetary values **/
	char frac_digits;		/* CHAR_MAX */
	/** Whether field(currency_symbol) precedes (1) or follows (0) positive monetary values **/
	char p_cs_precedes;		/* CHAR_MAX */
	/** Whether field(currency_symbol) is (1) or is not (0) separated from positive monetary values by a space **/
	char p_sep_by_space;		/* CHAR_MAX */
	/** Whether field(currency_symbol) precedes (1) or follows (0) negative monetary values **/
	char n_cs_precedes;		/* CHAR_MAX */
	/** Whether field(currency_symbol) is (1) or is not(0) separated from negative monetary values by a space **/
	char n_sep_by_space;		/* CHAR_MAX */
	/** The position of field(positive_sign) for positive monetary values **/
	char p_sign_posn;		/* CHAR_MAX */
	/** The position of field(positive_sign) for negative monetary values **/
	char n_sign_posn;		/* CHAR_MAX */
	#if __STDC_VERSION__ >= 199901L
	/** Whether field(currency_symbol) precedes (1) or follows (0) positive international monetary values **/
	char int_p_cs_precedes;		/* CHAR_MAX */
	/** Whether field(currency_symbol) is (1) or is not (0) separated from positive international monetary values by a space **/
	char int_p_sep_by_space;	/* CHAR_MAX */
	/** Whether field(currency_symbol) precedes (1) or follows (0) negative international monetary values **/
	char int_n_cs_precedes;		/* CHAR_MAX */
	/** Whether field(currency_symbol) is (1) or is not(0) separated from negative international monetary values by a space **/
	char int_n_sep_by_space;	/* CHAR_MAX */
	/** The position of field(positive_sign) for positive international monetary values **/
	char int_p_sign_posn;		/* CHAR_MAX */
	/** The position of field(positive_sign) for negative international monetary values **/
	char int_n_sign_posn;		/* CHAR_MAX */
	#else
	char __int_p_cs_precedes;
	char __int_p_sep_by_space;
	char __int_n_cs_precedes;
	char __int_n_sep_by_space;
	char __int_p_sign_posn;
	char __int_n_sign_posn;
	#endif
};

/* values specified in comments are for the "C" locale */

/*
STDC(1)
*/

define(`STDC',
	`ifelse($#, 2,
		`ifelse($1, 1, `!defined __STDC_VERSION__ || __STDC_VERSION__ < $2', `defined __STDC_VERSION__ && $1 <= __STDC_VERSION__ && __STDC_VERSION__ < $2')',
		`ifelse($1, 1, `', `defined __STDC_VERSION__ && $1 <= __STDC_VERSION__')')
')dnl

define(`POSIX',
	`ifelse($#, 2,
		`ifelse($1, 1, `defined _POSIX_SOURCE && (!defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < $2)', `defined _POSIX_C_SOURCE && $1 <= _POSIX_C_SOURCE && _POSIX_C_SOURCE < $2')',
		`ifelse($1, 1, `defined _POSIX_SOURCE', `defined _POSIX_C_SOURCE && $1 <= _POSIX_C_SOURCE')')
')dnl

define(`XEXT', `defined _XOPEN_SOURCE && ((defined _XOPEN_SOURCE_EXTENDED && _XOPEN_SOURCE_EXTENDED == 1) || 500 <= _XOPEN_SOURCE)')
define(`XOPEN',
	`ifelse($#, 2,
		`ifelse($1, 4, `defined _XOPEN_SOURCE && _XOPEN_SOURCE < $2',
			`ifelse($1, 400, `XEXT() && _XOPEN_SOURCE < $2',
				`defined _XOPEN_SOURCE && $1 <= _XOPEN_SOURCE && _XOPEN_SOURCE < $2')')',
		`ifelse($1, 4, `defined _XOPEN_SOURCE',
			`ifelse($1, 400, `XEXT())',
				`defined _XOPEN_SOURCE && $1 <= _XOPEN_SOURCE')')')
')dnl

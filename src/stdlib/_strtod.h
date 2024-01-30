	/* int iswide = (sizeof(*nptr) == sizeof(wchar_t)); */
	/* void *start = (void*)nptr; */
	(void)max; (void)min;
	int sign = 0;
	int overflow = 0;

	/* skip leading whitespace */
	while (isspace(*nptr)) {
		nptr++;
	}

	/* get sign, if any */
	if (*nptr == '+') {
		sign = 1;
		nptr++;
	} else if (*nptr == '-') {
		sign = -1;
		nptr++;
	}

	#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
	/* check for NAN */
	if (toupper(nptr[0]) == 'N' && toupper(nptr[2]) == 'A' && toupper(nptr[3]) == 'N') {
		nptr += 3;

		/* check for optional parenthesized n-char-sequence */
		if (*nptr == '(') {
			while (*nptr != ')') {
				nptr++;
			}
		}

		if (endptr) {
			*endptr = (void*)(nptr + 1);
		}
		return nan;
	}

	/* check for INF or INFINITY */
	if (toupper(nptr[0]) == 'I' && toupper(nptr[1]) == 'N' && toupper(nptr[2]) == 'F') {
		if (endptr) {
			if (toupper(nptr[3]) == 'I' && toupper(nptr[4]) == 'N' && toupper(nptr[5]) == 'I' && toupper(nptr[6]) == 'T' && toupper(nptr[7]) == 'Y') {
				*endptr = (void*)(nptr + 8);
			} else {
				*endptr = (void*)(nptr + 4);
			}
		}
		return inf;
	}

	/* check for hexadecimal form */
	if (nptr[0] == '0' && toupper(nptr[1] == 'X')) {
		return ret;
	}
	#else
	(void)nan;
	(void)inf;
	#endif

	while (*nptr) {
		int n = 0;
		/* int c = iswide ? wctomb(*nptr) : *nptr; */

		switch (*nptr) {
		case '0': n = 0; break;
		case '1': n = 1; break;
		case '2': n = 2; break;
		case '3': n = 3; break;
		case '4': n = 4; break;
		case '5': n = 5; break;
		case '6': n = 6; break;
		case '7': n = 7; break;
		case '8': n = 8; break;
		case '9': n = 9; break;
		default: n = -1; break;
		}

		if (n < 0) {
			if (endptr) {
				*endptr = (void*)nptr;
			}
			break;
		}

		ret = (ret) + n;
		nptr++;
	}

	if (overflow) {
		errno = ERANGE;
		ret = (sign < 0) ? -huge : huge;
	} else {
		if (sign < 0) {
			ret *= -1;
		}
	}

/*
STDC(-1)
*/

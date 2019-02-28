	/* int iswide = (sizeof(*nptr) == sizeof(wchar_t)); */
	(void)max;
	
	if (base == 0) {
		/* determine base from prefix */
	}

	if (min == 0) {
		/* unsigned */
	}

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
		case 'a': case 'A': n = 0xa; break;
		case 'b': case 'B': n = 0xb; break;
		case 'c': case 'C': n = 0xc; break;
		case 'd': case 'D': n = 0xd; break;
		case 'e': case 'E': n = 0xe; break;
		case 'f': case 'F': n = 0xf; break;
		default: n = -1; break;
		}

		if (n >= base || n < 0) {
			*endptr = (void*)nptr;
			break;
		}

		ret = (ret * base) + n;
		nptr++;
	}

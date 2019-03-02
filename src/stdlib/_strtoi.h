	/* int iswide = (sizeof(*nptr) == sizeof(wchar_t)); */
	void *start = (void*)nptr;
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

	/* fail if sign is negative but we are doing unsigned conversion */
	if (min == 0 && sign == -1) {
		if (endptr) {
			*endptr = start;
		}
		return 0;
	} else if (sign == 0) {
		sign = 1;
	}
	
	/* determine base */
	if (base == 0) {
		if (nptr[0] == '0') {
			if (nptr[1] == 'x' || nptr[1] == 'X') {
				base = 16;
			} else {
				base = 8;
			}
		} else {
			base = 10;
		}
	}

	/* verify valid base */
	if (base < 2 || base > 36) {
		if (endptr) {
			*endptr = start;
		}
		return 0;
	}

	/* skip leading 0x if appropriate */
	if (base == 16 && nptr[0] == '0' && (nptr[1] == 'x' || nptr[1] == 'X')) {
		nptr += 2;
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
		case 'g': case 'G': n = 0x10; break;
		case 'h': case 'H': n = 0x11; break;
		case 'i': case 'I': n = 0x12; break;
		case 'j': case 'J': n = 0x13; break;
		case 'k': case 'K': n = 0x14; break;
		case 'l': case 'L': n = 0x15; break;
		case 'm': case 'M': n = 0x16; break;
		case 'n': case 'N': n = 0x17; break;
		case 'o': case 'O': n = 0x18; break;
		case 'p': case 'P': n = 0x19; break;
		case 'q': case 'Q': n = 0x1a; break;
		case 'r': case 'R': n = 0x1b; break;
		case 's': case 'S': n = 0x1c; break;
		case 't': case 'T': n = 0x1d; break;
		case 'u': case 'U': n = 0x1e; break;
		case 'v': case 'V': n = 0x1f; break;
		case 'w': case 'W': n = 0x20; break;
		case 'x': case 'X': n = 0x21; break;
		case 'y': case 'Y': n = 0x22; break;
		case 'z': case 'Z': n = 0x23; break;
		default: n = -1; break;
		}

		if (n >= base || n < 0) {
			if (endptr) {
				*endptr = (void*)nptr;
			}
			break;
		}

		if (ret > max / base) {
			overflow = 1;
		} else {
			ret = (ret * base) + n;
		}
		nptr++;
	}

	if (overflow) {
		ret = (sign == 1) ? max : min;
	} else {
		ret *= sign;
	}

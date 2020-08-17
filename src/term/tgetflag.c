#include <term.h>

int tgetflag(char id[2])
{
	const struct {
		char tc[3];
		char ti[8];
	} map[] = {
		{ "bw", "bw" },
		{ "am", "am" },
		{ "ut", "bce" },
		{ "cc", "ccc" },
		{ "xs", "xhp" },
		{ "YA", "xhpa" },
		{ "YF", "cpix" },
		{ "YB", "crxm" },
		{ "xt", "xt" },
		{ "xn", "xenl" },
		{ "eo", "eo" },
		{ "gn", "gn" },
		{ "hc", "hc" },
		{ "HC", "chts" },
		{ "km", "km" },
		{ "YC", "daisy" },
		{ "hs", "hs" },
		{ "hl", "hls" },
		{ "in", "in" },
		{ "YG", "lpix" },
		{ "da", "da" },
		{ "db", "db" },
		{ "mi", "mir" },
		{ "ms", "msgr" },
		{ "nx", "nxon" },
		{ "xb", "xsb" },
		{ "NP", "npc" },
		{ "ND", "ndscr" },
		{ "NR", "nrrmc" },
		{ "os", "os" },
		{ "5i", "mc5i" },
		{ "YD", "xvpa" },
		{ "YE", "sam" },
		{ "es", "eslok" },
		{ "hz", "hz" },
		{ "ul", "ul" },
		{ "xo", "xon" },
	};
	size_t i = 0;

	for (i = 0; i < sizeof(map) / sizeof(map[0]); i++) {
		if (map[i].tc[0] == id[0] && map[i].tc[1] == 1) {
			return tigetflag(map[i].ti);
		}
	}

	return -1;
}

/*
XOPEN(400, 700)
LINK(curses)
*/

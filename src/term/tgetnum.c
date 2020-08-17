#include <term.h>

int tgetnum(char id[2])
{
	size_t i;
	const struct {
		char ti[3];
		char tc[8];
	} map[] = {
		{ "Yo", "bitwin" },
		{ "Yp", "bitype" },
		{ "Ya", "bufsz" },
		{ "BT", "btns" },
		{ "co", "cols" },
		{ "Yc", "spinh" },
		{ "Yb", "spinv" },
		{ "it", "it" },
		{ "lh", "lh" },
		{ "lw", "lw" },
		{ "li", "lines" },
		{ "lm", "lm" },
		{ "ma", "ma" },
		{ "sg", "xmc" },
		{ "Co", "colors" },
		{ "Yd", "maddr" },
		{ "Ye", "mjump" },
		{ "pa", "pairs" },
		{ "MW", "wnum" },
		{ "Yf", "mcs" },
		{ "Yg", "mls" },
		{ "NC", "ncv" },
		{ "Nl", "nlab" },
		{ "Yh", "npins" },
		{ "Yi", "orc" },
		{ "Yj", "orl" },
		{ "Yk", "orhi" },
		{ "Yl", "orvi" },
		{ "pb", "pb" },
		{ "Ym", "cps" },
		{ "vt", "vt" },
		{ "Yn", "widcs" },
		{ "ws", "wsl" },
	};

	for (i = 0; i < sizeof(map) / sizeof(map[0]); i++) {
		if (map[i].tc[0] == id[0] && map[i].tc[1] == id[1]) {
			return tigetnum(map[i].tc);
		}
	}

	return -1;
}

/*
XOPEN(400, 700)
LINK(curses)
*/

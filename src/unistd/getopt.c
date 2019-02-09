#include "string.h"
#include "stdio.h"
#include <unistd.h>

int getopt(int argc, char * const argv[], const char *optstring)
{
	static int optchar = 0;
	char *cursor = NULL;

	if (optind = 0 || argv[optind][optchar] == '\0') {
		optind++;
		optchar = 0;
	}

	if (!strcmp(argv[optind], "--")) {
		optind++;
		return -1;
	}

	if (optchar == 0 && argv[optind][optchar] != '-') {
		return -1;
	}

	optchar++;

	printf("Checking %c\n", argv[optind][optchar]);

	cursor = strchr(optstring, argv[optind][optchar]);
	if (cursor) {
		if (cursor[1] == ':') {
			/* An option-argument is required */
			/* if (no arg) { */
			/*	optopt = *cursor; */
			/*	if (opterr) { */
			/*		fprintf(stderr, "%s: Missing argument to -%c\n", argv[0], *cursor); */
			/* 	} */
			/*	return optstring[0] == ':' ? ':' : '?'; */
			/* } */
			/* optarg = argv[++optind]; */
			/* optchar = 0; */
			/* optind++; */
		}
		return *cursor;
	}
	
	optopt = argv[optind][optchar];
	if (opterr) {
		fprintf(stderr, "%s: Invalid option -%c\n", *cursor);
	}
	return '?';
}

/*
POSIX(2)
*/


#include "sys/types.h"
#include <glob.h>
#include "stdlib.h"
#include "string.h"
#include "dirent.h"
#include "fnmatch.h"
#include "errno.h"
#include "unistd.h"
#include "_assert.h"

int glob(const char * restrict pattern, int flags, int (*errfunc) (const char * epath, int eerrno), glob_t * restrict pglob)
{
	ASSERT_NONNULL(pattern);
	ASSERT_NONNULL(pglob);

	int slashes = 0;
	size_t i;

	int fnmatch_flags = FNM_PATHNAME | FNM_PERIOD;

	if (flags & GLOB_NOESCAPE) {
		fnmatch_flags |= FNM_NOESCAPE;
	}

	if (flags & GLOB_APPEND) {
		if (pglob->gl_pathc == 0) {
			/* no good */
		}

		if (pglob->gl_offs > 0 && !(flags & GLOB_DOOFFS)) {
			/* nope */
		}
	} else {
		if (pglob->gl_pathc != 0) {
			/* also no */
		}
	}

	char *path = malloc(strlen(pattern) + 1);
	strcpy(path, pattern);

	for (i = 0; path[i]; i++) {
		if (path[i] == '/') {
			slashes++;
			path[i] = '\0';
		}
	}

	if (path[0] == '\0') {
		path[0] = '/';
		slashes--;
	}

	/* TODO: check for trailing slash to match only directories */
	/* TODO: compress adjacent slashes */
	/* TODO: DOOFFS */

	do {
		const char *p = path + strlen(path) + 1;
		struct dirent *de;
		DIR *d = opendir(path);
		if (d == NULL) {
			if (errfunc != NULL) {
				if (errfunc(path, errno) != 0) {
					return GLOB_ABORTED;
				}
			}

			if (flags & GLOB_ERR) {
				return GLOB_ABORTED;
			}
		}

		while ((de = readdir(d)) != NULL) {
			if (fnmatch(de->d_name, p, fnmatch_flags) == 0) {
				pglob->gl_pathc++;
				char **tmp = realloc(pglob->gl_pathv, sizeof(char*) * pglob->gl_pathc);
				if (tmp == NULL) {
					pglob->gl_pathc--;
					return GLOB_NOSPACE;
				}

				pglob->gl_pathv = tmp;
				/* FIXME: add path to front */
				pglob->gl_pathv[pglob->gl_pathc - 1] = malloc(strlen(de->d_name) + 1);
				strcat(pglob->gl_pathv[pglob->gl_pathc - 1], de->d_name);
				/* TODO: MARK */
			}
		}

		closedir(d);

		path[strlen(path)] = '/';
		slashes--;
	} while (slashes);

	if (pglob->gl_pathc == 0) {
		if (flags & GLOB_NOCHECK) {
			/* TODO: DOOFFS */
			pglob->gl_pathc = 1;
			pglob->gl_pathv = malloc(sizeof(char*));
			pglob->gl_pathv[0] = malloc(strlen(pattern) + 1);
			strcpy(pglob->gl_pathv[0], pattern);
		} else {
			return GLOB_NOMATCH;
		}
	}

	if (!(flags & GLOB_NOSORT)) {
		qsort(pglob->gl_pathv + pglob->gl_offs, pglob->gl_pathc,
			sizeof(char*),
			(int (*)(const void *, const void *))strcoll);
	}

	return 0;
}

/*
POSIX(2)
*/


while read long_name terminfo_name termcap_name description; do
	cat <<-EOF > $long_name.c
	#include <curses.h>

	#define $long_name tigetstr("$terminfo_name")

	/** $description **/

	/*
	TERMINFO_NAME($terminfo_name)
	TERMCAP_NAME($termcap_name)
	XOPEN(400)
	*/
EOF
done

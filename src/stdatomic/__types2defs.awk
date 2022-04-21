BEGIN {
	FS = "\t";
}

NF == 2 { printf("echo 'typedef _Atomic %s atomic_%s;' > atomic_%s.c\n", $2, $1, $1); }
NF == 1 { printf("echo 'typedef _Atomic %s atomic_%s;' > atomic_%s.c\n", $1, $1, $1); }

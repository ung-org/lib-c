void __libc_start(int argc, char **argv)
{
	/*
        struct __fopen_options fo = {0};

        fo.fd = 0;
        stdin = __libc.stdio.fopen(&fo);

        fo.fd = 1;
        stdout = __libc.stdio.fopen(&fo);

        fo.fd = 2;
        stderr = __libc.stdio.fopen(&fo);

        #if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
        setlocale(LC_ALL, "POSIX");
        #else
        setlocale(LC_ALL, "C");
        #endif
	*/
	extern void exit(int);
	extern int main(int, char*[]);

        exit(main(argc, argv));
}


iso_c90: libc_C.0 libc_C.1 libm_C.0 libm_C.1
iso_c: iso_c90
ansi_c: iso_c90
ansi_c89: iso_c90

iso_c95: iso_c90 libc_C.199409 libm_C.199409
iso_c94: iso_c95
iso_c_amd1: iso_c95

iso_c99: iso_c95 libc_C.199901 libm_C.199901

iso_c11: iso_c99 libc_C.201112 libm_C.201112
iso_c11_ext1: iso_c11 libc_C_X1.201112

iso_c18: iso_c11 libc_C.201710 libm_C.201710
iso_c18_ext1: iso_c18 libc_C_X1.201710

posix.1: libc_POSIX.1 iso_c90
posix.2: posix.1 libc_POSIX.2
xopen: posix.1 posix.2 libc_XOPEN.400

posix.199309: posix.1 libc_POSIX.199309 libpthreads_POSIX.199309

posix.199506: posix.1 posix.2 posix.199309 libc_POSIX.199506 libpthreads_POSIX.199506
xopen.500: posix.199506 libc_XOPEN.500

posix.200112: posix.199506 libc_POSIX.200112 libpthreads_POSIX.200112
xopen.600: posix.200112 libc_XOPEN.600

posix.200809: iso_c99 posix.200112 libc_POSIX.200809 libpthreads_POSIX.200809
xopen.700: posix.200809 libc_XOPEN.700

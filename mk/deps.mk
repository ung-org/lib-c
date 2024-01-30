.POSIX:

all:

all: mk/creat.d
mk/creat.d: src/fcntl/creat.c
	sh mk/deps.sh src/fcntl/creat.c

all: mk/fcntl.d
mk/fcntl.d: src/fcntl/fcntl.c
	sh mk/deps.sh src/fcntl/fcntl.c

all: mk/open.d
mk/open.d: src/fcntl/open.c
	sh mk/deps.sh src/fcntl/open.c

all: mk/atomic_fetch_and.d
mk/atomic_fetch_and.d: src/stdatomic/atomic_fetch_and.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_and.c

all: mk/atomic_flag_clear_explicit.d
mk/atomic_flag_clear_explicit.d: src/stdatomic/atomic_flag_clear_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_flag_clear_explicit.c

all: mk/atomic_compare_exchange_strong.d
mk/atomic_compare_exchange_strong.d: src/stdatomic/atomic_compare_exchange_strong.c
	sh mk/deps.sh src/stdatomic/atomic_compare_exchange_strong.c

all: mk/atomic_fetch_xor_explicit.d
mk/atomic_fetch_xor_explicit.d: src/stdatomic/atomic_fetch_xor_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_xor_explicit.c

all: mk/atomic_compare_exchange_weak_explicit.d
mk/atomic_compare_exchange_weak_explicit.d: src/stdatomic/atomic_compare_exchange_weak_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_compare_exchange_weak_explicit.c

all: mk/atomic_thread_fence.d
mk/atomic_thread_fence.d: src/stdatomic/atomic_thread_fence.c
	sh mk/deps.sh src/stdatomic/atomic_thread_fence.c

all: mk/atomic_load.d
mk/atomic_load.d: src/stdatomic/atomic_load.c
	sh mk/deps.sh src/stdatomic/atomic_load.c

all: mk/atomic_fetch_and_explicit.d
mk/atomic_fetch_and_explicit.d: src/stdatomic/atomic_fetch_and_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_and_explicit.c

all: mk/atomic_store_explicit.d
mk/atomic_store_explicit.d: src/stdatomic/atomic_store_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_store_explicit.c

all: mk/atomic_flag.d
mk/atomic_flag.d: src/stdatomic/atomic_flag.c
	sh mk/deps.sh src/stdatomic/atomic_flag.c

all: mk/atomic_fetch_sub.d
mk/atomic_fetch_sub.d: src/stdatomic/atomic_fetch_sub.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_sub.c

all: mk/atomic_fetch_add.d
mk/atomic_fetch_add.d: src/stdatomic/atomic_fetch_add.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_add.c

all: mk/atomic_fetch_add_explicit.d
mk/atomic_fetch_add_explicit.d: src/stdatomic/atomic_fetch_add_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_add_explicit.c

all: mk/atomic_fetch_or_explicit.d
mk/atomic_fetch_or_explicit.d: src/stdatomic/atomic_fetch_or_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_or_explicit.c

all: mk/atomic_exchange_explicit.d
mk/atomic_exchange_explicit.d: src/stdatomic/atomic_exchange_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_exchange_explicit.c

all: mk/atomic_compare_exchange_strong_explicit.d
mk/atomic_compare_exchange_strong_explicit.d: src/stdatomic/atomic_compare_exchange_strong_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_compare_exchange_strong_explicit.c

all: mk/atomic_compare_exchange_weak.d
mk/atomic_compare_exchange_weak.d: src/stdatomic/atomic_compare_exchange_weak.c
	sh mk/deps.sh src/stdatomic/atomic_compare_exchange_weak.c

all: mk/atomic_exchange.d
mk/atomic_exchange.d: src/stdatomic/atomic_exchange.c
	sh mk/deps.sh src/stdatomic/atomic_exchange.c

all: mk/atomic_signal_fence.d
mk/atomic_signal_fence.d: src/stdatomic/atomic_signal_fence.c
	sh mk/deps.sh src/stdatomic/atomic_signal_fence.c

all: mk/atomic_init.d
mk/atomic_init.d: src/stdatomic/atomic_init.c
	sh mk/deps.sh src/stdatomic/atomic_init.c

all: mk/atomic_fetch_sub_explicit.d
mk/atomic_fetch_sub_explicit.d: src/stdatomic/atomic_fetch_sub_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_sub_explicit.c

all: mk/atomic_fetch_or.d
mk/atomic_fetch_or.d: src/stdatomic/atomic_fetch_or.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_or.c

all: mk/atomic_is_lock_free.d
mk/atomic_is_lock_free.d: src/stdatomic/atomic_is_lock_free.c
	sh mk/deps.sh src/stdatomic/atomic_is_lock_free.c

all: mk/atomic_flag_test_and_set_explicit.d
mk/atomic_flag_test_and_set_explicit.d: src/stdatomic/atomic_flag_test_and_set_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_flag_test_and_set_explicit.c

all: mk/atomic_store.d
mk/atomic_store.d: src/stdatomic/atomic_store.c
	sh mk/deps.sh src/stdatomic/atomic_store.c

all: mk/atomic_fetch_xor.d
mk/atomic_fetch_xor.d: src/stdatomic/atomic_fetch_xor.c
	sh mk/deps.sh src/stdatomic/atomic_fetch_xor.c

all: mk/atomic_flag_clear.d
mk/atomic_flag_clear.d: src/stdatomic/atomic_flag_clear.c
	sh mk/deps.sh src/stdatomic/atomic_flag_clear.c

all: mk/atomic_load_explicit.d
mk/atomic_load_explicit.d: src/stdatomic/atomic_load_explicit.c
	sh mk/deps.sh src/stdatomic/atomic_load_explicit.c

all: mk/atomic_flag_test_and_set.d
mk/atomic_flag_test_and_set.d: src/stdatomic/atomic_flag_test_and_set.c
	sh mk/deps.sh src/stdatomic/atomic_flag_test_and_set.c

all: mk/creal.d
mk/creal.d: src/complex/creal.c
	sh mk/deps.sh src/complex/creal.c

all: mk/ctan.d
mk/ctan.d: src/complex/ctan.c
	sh mk/deps.sh src/complex/ctan.c

all: mk/csqrt.d
mk/csqrt.d: src/complex/csqrt.c
	sh mk/deps.sh src/complex/csqrt.c

all: mk/catan.d
mk/catan.d: src/complex/catan.c
	sh mk/deps.sh src/complex/catan.c

all: mk/cimag.d
mk/cimag.d: src/complex/cimag.c
	sh mk/deps.sh src/complex/cimag.c

all: mk/csinh.d
mk/csinh.d: src/complex/csinh.c
	sh mk/deps.sh src/complex/csinh.c

all: mk/ccos.d
mk/ccos.d: src/complex/ccos.c
	sh mk/deps.sh src/complex/ccos.c

all: mk/conj.d
mk/conj.d: src/complex/conj.c
	sh mk/deps.sh src/complex/conj.c

all: mk/ccosh.d
mk/ccosh.d: src/complex/ccosh.c
	sh mk/deps.sh src/complex/ccosh.c

all: mk/catanh.d
mk/catanh.d: src/complex/catanh.c
	sh mk/deps.sh src/complex/catanh.c

all: mk/cabs.d
mk/cabs.d: src/complex/cabs.c
	sh mk/deps.sh src/complex/cabs.c

all: mk/cpow.d
mk/cpow.d: src/complex/cpow.c
	sh mk/deps.sh src/complex/cpow.c

all: mk/cexp.d
mk/cexp.d: src/complex/cexp.c
	sh mk/deps.sh src/complex/cexp.c

all: mk/ctanh.d
mk/ctanh.d: src/complex/ctanh.c
	sh mk/deps.sh src/complex/ctanh.c

all: mk/casin.d
mk/casin.d: src/complex/casin.c
	sh mk/deps.sh src/complex/casin.c

all: mk/casinh.d
mk/casinh.d: src/complex/casinh.c
	sh mk/deps.sh src/complex/casinh.c

all: mk/cacosh.d
mk/cacosh.d: src/complex/cacosh.c
	sh mk/deps.sh src/complex/cacosh.c

all: mk/carg.d
mk/carg.d: src/complex/carg.c
	sh mk/deps.sh src/complex/carg.c

all: mk/clog.d
mk/clog.d: src/complex/clog.c
	sh mk/deps.sh src/complex/clog.c

all: mk/cproj.d
mk/cproj.d: src/complex/cproj.c
	sh mk/deps.sh src/complex/cproj.c

all: mk/csin.d
mk/csin.d: src/complex/csin.c
	sh mk/deps.sh src/complex/csin.c

all: mk/cacos.d
mk/cacos.d: src/complex/cacos.c
	sh mk/deps.sh src/complex/cacos.c

all: mk/strspn.d
mk/strspn.d: src/string/strspn.c
	sh mk/deps.sh src/string/strspn.c

all: mk/memmove_s.d
mk/memmove_s.d: src/string/memmove_s.c
	sh mk/deps.sh src/string/memmove_s.c

all: mk/strcoll.d
mk/strcoll.d: src/string/strcoll.c
	sh mk/deps.sh src/string/strcoll.c

all: mk/strnlen_s.d
mk/strnlen_s.d: src/string/strnlen_s.c
	sh mk/deps.sh src/string/strnlen_s.c

all: mk/strncmp.d
mk/strncmp.d: src/string/strncmp.c
	sh mk/deps.sh src/string/strncmp.c

all: mk/memset.d
mk/memset.d: src/string/memset.c
	sh mk/deps.sh src/string/memset.c

all: mk/strncpy_s.d
mk/strncpy_s.d: src/string/strncpy_s.c
	sh mk/deps.sh src/string/strncpy_s.c

all: mk/memcpy.d
mk/memcpy.d: src/string/memcpy.c
	sh mk/deps.sh src/string/memcpy.c

all: mk/strxfrm.d
mk/strxfrm.d: src/string/strxfrm.c
	sh mk/deps.sh src/string/strxfrm.c

all: mk/memmove.d
mk/memmove.d: src/string/memmove.c
	sh mk/deps.sh src/string/memmove.c

all: mk/memcpy_s.d
mk/memcpy_s.d: src/string/memcpy_s.c
	sh mk/deps.sh src/string/memcpy_s.c

all: mk/strcpy_s.d
mk/strcpy_s.d: src/string/strcpy_s.c
	sh mk/deps.sh src/string/strcpy_s.c

all: mk/strerrorlen_s.d
mk/strerrorlen_s.d: src/string/strerrorlen_s.c
	sh mk/deps.sh src/string/strerrorlen_s.c

all: mk/memcmp.d
mk/memcmp.d: src/string/memcmp.c
	sh mk/deps.sh src/string/memcmp.c

all: mk/strcmp.d
mk/strcmp.d: src/string/strcmp.c
	sh mk/deps.sh src/string/strcmp.c

all: mk/strncat_s.d
mk/strncat_s.d: src/string/strncat_s.c
	sh mk/deps.sh src/string/strncat_s.c

all: mk/memccpy.d
mk/memccpy.d: src/string/memccpy.c
	sh mk/deps.sh src/string/memccpy.c

all: mk/strerror_s.d
mk/strerror_s.d: src/string/strerror_s.c
	sh mk/deps.sh src/string/strerror_s.c

all: mk/strcat_s.d
mk/strcat_s.d: src/string/strcat_s.c
	sh mk/deps.sh src/string/strcat_s.c

all: mk/memchr.d
mk/memchr.d: src/string/memchr.c
	sh mk/deps.sh src/string/memchr.c

all: mk/strcspn.d
mk/strcspn.d: src/string/strcspn.c
	sh mk/deps.sh src/string/strcspn.c

all: mk/strlen.d
mk/strlen.d: src/string/strlen.c
	sh mk/deps.sh src/string/strlen.c

all: mk/memset_s.d
mk/memset_s.d: src/string/memset_s.c
	sh mk/deps.sh src/string/memset_s.c

all: mk/wcsrtombs.d
mk/wcsrtombs.d: src/wchar/wcsrtombs.c
	sh mk/deps.sh src/wchar/wcsrtombs.c

all: mk/btowc.d
mk/btowc.d: src/wchar/btowc.c
	sh mk/deps.sh src/wchar/btowc.c

all: mk/wctob.d
mk/wctob.d: src/wchar/wctob.c
	sh mk/deps.sh src/wchar/wctob.c

all: mk/wcslen.d
mk/wcslen.d: src/wchar/wcslen.c
	sh mk/deps.sh src/wchar/wcslen.c

all: mk/wcsspn.d
mk/wcsspn.d: src/wchar/wcsspn.c
	sh mk/deps.sh src/wchar/wcsspn.c

all: mk/wcsncat.d
mk/wcsncat.d: src/wchar/wcsncat.c
	sh mk/deps.sh src/wchar/wcsncat.c

all: mk/wcscpy_s.d
mk/wcscpy_s.d: src/wchar/wcscpy_s.c
	sh mk/deps.sh src/wchar/wcscpy_s.c

all: mk/swscanf.d
mk/swscanf.d: src/wchar/swscanf.c
	sh mk/deps.sh src/wchar/swscanf.c

all: mk/getwc.d
mk/getwc.d: src/wchar/getwc.c
	sh mk/deps.sh src/wchar/getwc.c

all: mk/vfwprintf.d
mk/vfwprintf.d: src/wchar/vfwprintf.c
	sh mk/deps.sh src/wchar/vfwprintf.c

all: mk/wcstoll.d
mk/wcstoll.d: src/wchar/wcstoll.c
	sh mk/deps.sh src/wchar/wcstoll.c

all: mk/wmemcpy.d
mk/wmemcpy.d: src/wchar/wmemcpy.c
	sh mk/deps.sh src/wchar/wmemcpy.c

all: mk/fgetws.d
mk/fgetws.d: src/wchar/fgetws.c
	sh mk/deps.sh src/wchar/fgetws.c

all: mk/fwprintf_s.d
mk/fwprintf_s.d: src/wchar/fwprintf_s.c
	sh mk/deps.sh src/wchar/fwprintf_s.c

all: mk/wcschr.d
mk/wcschr.d: src/wchar/wcschr.c
	sh mk/deps.sh src/wchar/wcschr.c

all: mk/wmemcpy_s.d
mk/wmemcpy_s.d: src/wchar/wmemcpy_s.c
	sh mk/deps.sh src/wchar/wmemcpy_s.c

all: mk/vfwscanf_s.d
mk/vfwscanf_s.d: src/wchar/vfwscanf_s.c
	sh mk/deps.sh src/wchar/vfwscanf_s.c

all: mk/wcstof.d
mk/wcstof.d: src/wchar/wcstof.c
	sh mk/deps.sh src/wchar/wcstof.c

all: mk/wmemcmp.d
mk/wmemcmp.d: src/wchar/wmemcmp.c
	sh mk/deps.sh src/wchar/wmemcmp.c

all: mk/vswscanf.d
mk/vswscanf.d: src/wchar/vswscanf.c
	sh mk/deps.sh src/wchar/vswscanf.c

all: mk/fputwc.d
mk/fputwc.d: src/wchar/fputwc.c
	sh mk/deps.sh src/wchar/fputwc.c

all: mk/swprintf_s.d
mk/swprintf_s.d: src/wchar/swprintf_s.c
	sh mk/deps.sh src/wchar/swprintf_s.c

all: mk/fwprintf.d
mk/fwprintf.d: src/wchar/fwprintf.c
	sh mk/deps.sh src/wchar/fwprintf.c

all: mk/wcscpy.d
mk/wcscpy.d: src/wchar/wcscpy.c
	sh mk/deps.sh src/wchar/wcscpy.c

all: mk/wcstok.d
mk/wcstok.d: src/wchar/wcstok.c
	sh mk/deps.sh src/wchar/wcstok.c

all: mk/fwscanf_s.d
mk/fwscanf_s.d: src/wchar/fwscanf_s.c
	sh mk/deps.sh src/wchar/fwscanf_s.c

all: mk/vfwprintf_s.d
mk/vfwprintf_s.d: src/wchar/vfwprintf_s.c
	sh mk/deps.sh src/wchar/vfwprintf_s.c

all: mk/wmemset.d
mk/wmemset.d: src/wchar/wmemset.c
	sh mk/deps.sh src/wchar/wmemset.c

all: mk/wcswidth.d
mk/wcswidth.d: src/wchar/wcswidth.c
	sh mk/deps.sh src/wchar/wcswidth.c

all: mk/wprintf_s.d
mk/wprintf_s.d: src/wchar/wprintf_s.c
	sh mk/deps.sh src/wchar/wprintf_s.c

all: mk/snwprintf_s.d
mk/snwprintf_s.d: src/wchar/snwprintf_s.c
	sh mk/deps.sh src/wchar/snwprintf_s.c

all: mk/wcsncpy.d
mk/wcsncpy.d: src/wchar/wcsncpy.c
	sh mk/deps.sh src/wchar/wcsncpy.c

all: mk/wmemchr.d
mk/wmemchr.d: src/wchar/wmemchr.c
	sh mk/deps.sh src/wchar/wmemchr.c

all: mk/putwc.d
mk/putwc.d: src/wchar/putwc.c
	sh mk/deps.sh src/wchar/putwc.c

all: mk/mbrlen.d
mk/mbrlen.d: src/wchar/mbrlen.c
	sh mk/deps.sh src/wchar/mbrlen.c

all: mk/mbsrtowcs_s.d
mk/mbsrtowcs_s.d: src/wchar/mbsrtowcs_s.c
	sh mk/deps.sh src/wchar/mbsrtowcs_s.c

all: mk/vwscanf_s.d
mk/vwscanf_s.d: src/wchar/vwscanf_s.c
	sh mk/deps.sh src/wchar/vwscanf_s.c

all: mk/vwscanf.d
mk/vwscanf.d: src/wchar/vwscanf.c
	sh mk/deps.sh src/wchar/vwscanf.c

all: mk/fwide.d
mk/fwide.d: src/wchar/fwide.c
	sh mk/deps.sh src/wchar/fwide.c

all: mk/wcstol.d
mk/wcstol.d: src/wchar/wcstol.c
	sh mk/deps.sh src/wchar/wcstol.c

all: mk/wprintf.d
mk/wprintf.d: src/wchar/wprintf.c
	sh mk/deps.sh src/wchar/wprintf.c

all: mk/getwchar.d
mk/getwchar.d: src/wchar/getwchar.c
	sh mk/deps.sh src/wchar/getwchar.c

all: mk/wcspbrk.d
mk/wcspbrk.d: src/wchar/wcspbrk.c
	sh mk/deps.sh src/wchar/wcspbrk.c

all: mk/wcsncat_s.d
mk/wcsncat_s.d: src/wchar/wcsncat_s.c
	sh mk/deps.sh src/wchar/wcsncat_s.c

all: mk/wcrtomb_s.d
mk/wcrtomb_s.d: src/wchar/wcrtomb_s.c
	sh mk/deps.sh src/wchar/wcrtomb_s.c

all: mk/mbsinit.d
mk/mbsinit.d: src/wchar/mbsinit.c
	sh mk/deps.sh src/wchar/mbsinit.c

all: mk/swscanf_s.d
mk/swscanf_s.d: src/wchar/swscanf_s.c
	sh mk/deps.sh src/wchar/swscanf_s.c

all: mk/wcscat.d
mk/wcscat.d: src/wchar/wcscat.c
	sh mk/deps.sh src/wchar/wcscat.c

all: mk/ungetwc.d
mk/ungetwc.d: src/wchar/ungetwc.c
	sh mk/deps.sh src/wchar/ungetwc.c

all: mk/fputws.d
mk/fputws.d: src/wchar/fputws.c
	sh mk/deps.sh src/wchar/fputws.c

all: mk/wcstok_s.d
mk/wcstok_s.d: src/wchar/wcstok_s.c
	sh mk/deps.sh src/wchar/wcstok_s.c

all: mk/vswscanf_s.d
mk/vswscanf_s.d: src/wchar/vswscanf_s.c
	sh mk/deps.sh src/wchar/vswscanf_s.c

all: mk/wcsncmp.d
mk/wcsncmp.d: src/wchar/wcsncmp.c
	sh mk/deps.sh src/wchar/wcsncmp.c

all: mk/vswprintf.d
mk/vswprintf.d: src/wchar/vswprintf.c
	sh mk/deps.sh src/wchar/vswprintf.c

all: mk/wmemmove_s.d
mk/wmemmove_s.d: src/wchar/wmemmove_s.c
	sh mk/deps.sh src/wchar/wmemmove_s.c

all: mk/putwchar.d
mk/putwchar.d: src/wchar/putwchar.c
	sh mk/deps.sh src/wchar/putwchar.c

all: mk/wcstoull.d
mk/wcstoull.d: src/wchar/wcstoull.c
	sh mk/deps.sh src/wchar/wcstoull.c

all: mk/vfwscanf.d
mk/vfwscanf.d: src/wchar/vfwscanf.c
	sh mk/deps.sh src/wchar/vfwscanf.c

all: mk/wcscspn.d
mk/wcscspn.d: src/wchar/wcscspn.c
	sh mk/deps.sh src/wchar/wcscspn.c

all: mk/vsnwprintf_s.d
mk/vsnwprintf_s.d: src/wchar/vsnwprintf_s.c
	sh mk/deps.sh src/wchar/vsnwprintf_s.c

all: mk/mbrtowc.d
mk/mbrtowc.d: src/wchar/mbrtowc.c
	sh mk/deps.sh src/wchar/mbrtowc.c

all: mk/wcsftime.d
mk/wcsftime.d: src/wchar/wcsftime.c
	sh mk/deps.sh src/wchar/wcsftime.c

all: mk/wcsrchr.d
mk/wcsrchr.d: src/wchar/wcsrchr.c
	sh mk/deps.sh src/wchar/wcsrchr.c

all: mk/mbsrtowcs.d
mk/mbsrtowcs.d: src/wchar/mbsrtowcs.c
	sh mk/deps.sh src/wchar/mbsrtowcs.c

all: mk/wcsrtombs_s.d
mk/wcsrtombs_s.d: src/wchar/wcsrtombs_s.c
	sh mk/deps.sh src/wchar/wcsrtombs_s.c

all: mk/wcsstr.d
mk/wcsstr.d: src/wchar/wcsstr.c
	sh mk/deps.sh src/wchar/wcsstr.c

all: mk/swprintf.d
mk/swprintf.d: src/wchar/swprintf.c
	sh mk/deps.sh src/wchar/swprintf.c

all: mk/wcsnlen_s.d
mk/wcsnlen_s.d: src/wchar/wcsnlen_s.c
	sh mk/deps.sh src/wchar/wcsnlen_s.c

all: mk/wcwidth.d
mk/wcwidth.d: src/wchar/wcwidth.c
	sh mk/deps.sh src/wchar/wcwidth.c

all: mk/wscanf.d
mk/wscanf.d: src/wchar/wscanf.c
	sh mk/deps.sh src/wchar/wscanf.c

all: mk/wcsxfrm.d
mk/wcsxfrm.d: src/wchar/wcsxfrm.c
	sh mk/deps.sh src/wchar/wcsxfrm.c

all: mk/wmemmove.d
mk/wmemmove.d: src/wchar/wmemmove.c
	sh mk/deps.sh src/wchar/wmemmove.c

all: mk/fwscanf.d
mk/fwscanf.d: src/wchar/fwscanf.c
	sh mk/deps.sh src/wchar/fwscanf.c

all: mk/wcswcs.d
mk/wcswcs.d: src/wchar/wcswcs.c
	sh mk/deps.sh src/wchar/wcswcs.c

all: mk/fgetwc.d
mk/fgetwc.d: src/wchar/fgetwc.c
	sh mk/deps.sh src/wchar/fgetwc.c

all: mk/vwprintf_s.d
mk/vwprintf_s.d: src/wchar/vwprintf_s.c
	sh mk/deps.sh src/wchar/vwprintf_s.c

all: mk/wcscmp.d
mk/wcscmp.d: src/wchar/wcscmp.c
	sh mk/deps.sh src/wchar/wcscmp.c

all: mk/wcstold.d
mk/wcstold.d: src/wchar/wcstold.c
	sh mk/deps.sh src/wchar/wcstold.c

all: mk/wcstod.d
mk/wcstod.d: src/wchar/wcstod.c
	sh mk/deps.sh src/wchar/wcstod.c

all: mk/wcsncpy_s.d
mk/wcsncpy_s.d: src/wchar/wcsncpy_s.c
	sh mk/deps.sh src/wchar/wcsncpy_s.c

all: mk/wcrtomb.d
mk/wcrtomb.d: src/wchar/wcrtomb.c
	sh mk/deps.sh src/wchar/wcrtomb.c

all: mk/wscanf_s.d
mk/wscanf_s.d: src/wchar/wscanf_s.c
	sh mk/deps.sh src/wchar/wscanf_s.c

all: mk/wcscat_s.d
mk/wcscat_s.d: src/wchar/wcscat_s.c
	sh mk/deps.sh src/wchar/wcscat_s.c

all: mk/wcstoul.d
mk/wcstoul.d: src/wchar/wcstoul.c
	sh mk/deps.sh src/wchar/wcstoul.c

all: mk/vswprintf_s.d
mk/vswprintf_s.d: src/wchar/vswprintf_s.c
	sh mk/deps.sh src/wchar/vswprintf_s.c

all: mk/vwprintf.d
mk/vwprintf.d: src/wchar/vwprintf.c
	sh mk/deps.sh src/wchar/vwprintf.c

all: mk/wcscoll.d
mk/wcscoll.d: src/wchar/wcscoll.c
	sh mk/deps.sh src/wchar/wcscoll.c

all: mk/__checked_call.d
mk/__checked_call.d: src/__checked_call.c
	sh mk/deps.sh src/__checked_call.c

all: mk/__load_locale.d
mk/__load_locale.d: src/locale/__load_locale.c
	sh mk/deps.sh src/locale/__load_locale.c

all: mk/__get_locale.d
mk/__get_locale.d: src/locale/__get_locale.c
	sh mk/deps.sh src/locale/__get_locale.c

all: mk/mktemp.d
mk/mktemp.d: src/stdlib/mktemp.c
	sh mk/deps.sh src/stdlib/mktemp.c

all: mk/atof.d
mk/atof.d: src/stdlib/atof.c
	sh mk/deps.sh src/stdlib/atof.c

all: mk/srand.d
mk/srand.d: src/stdlib/srand.c
	sh mk/deps.sh src/stdlib/srand.c

all: mk/wctomb_s.d
mk/wctomb_s.d: src/stdlib/wctomb_s.c
	sh mk/deps.sh src/stdlib/wctomb_s.c

all: mk/ignore_handler_s.d
mk/ignore_handler_s.d: src/stdlib/ignore_handler_s.c
	sh mk/deps.sh src/stdlib/ignore_handler_s.c

all: mk/strtoul.d
mk/strtoul.d: src/stdlib/strtoul.c
	sh mk/deps.sh src/stdlib/strtoul.c

all: mk/strtod.d
mk/strtod.d: src/stdlib/strtod.c
	sh mk/deps.sh src/stdlib/strtod.c

all: mk/ldiv.d
mk/ldiv.d: src/stdlib/ldiv.c
	sh mk/deps.sh src/stdlib/ldiv.c

all: mk/valloc.d
mk/valloc.d: src/stdlib/valloc.c
	sh mk/deps.sh src/stdlib/valloc.c

all: mk/lcong48.d
mk/lcong48.d: src/stdlib/lcong48.c
	sh mk/deps.sh src/stdlib/lcong48.c

all: mk/ecvt.d
mk/ecvt.d: src/stdlib/ecvt.c
	sh mk/deps.sh src/stdlib/ecvt.c

all: mk/atoi.d
mk/atoi.d: src/stdlib/atoi.c
	sh mk/deps.sh src/stdlib/atoi.c

all: mk/at_quick_exit.d
mk/at_quick_exit.d: src/stdlib/at_quick_exit.c
	sh mk/deps.sh src/stdlib/at_quick_exit.c

all: mk/labs.d
mk/labs.d: src/stdlib/labs.c
	sh mk/deps.sh src/stdlib/labs.c

all: mk/erand48.d
mk/erand48.d: src/stdlib/erand48.c
	sh mk/deps.sh src/stdlib/erand48.c

all: mk/bsearch_s.d
mk/bsearch_s.d: src/stdlib/bsearch_s.c
	sh mk/deps.sh src/stdlib/bsearch_s.c

all: mk/exit.d
mk/exit.d: src/stdlib/exit.c
	sh mk/deps.sh src/stdlib/exit.c

all: mk/fcvt.d
mk/fcvt.d: src/stdlib/fcvt.c
	sh mk/deps.sh src/stdlib/fcvt.c

all: mk/system.d
mk/system.d: src/stdlib/system.c
	sh mk/deps.sh src/stdlib/system.c

all: mk/lrand48.d
mk/lrand48.d: src/stdlib/lrand48.c
	sh mk/deps.sh src/stdlib/lrand48.c

all: mk/strtol.d
mk/strtol.d: src/stdlib/strtol.c
	sh mk/deps.sh src/stdlib/strtol.c

all: mk/strtof.d
mk/strtof.d: src/stdlib/strtof.c
	sh mk/deps.sh src/stdlib/strtof.c

all: mk/wcstombs.d
mk/wcstombs.d: src/stdlib/wcstombs.c
	sh mk/deps.sh src/stdlib/wcstombs.c

all: mk/srand48.d
mk/srand48.d: src/stdlib/srand48.c
	sh mk/deps.sh src/stdlib/srand48.c

all: mk/putenv.d
mk/putenv.d: src/stdlib/putenv.c
	sh mk/deps.sh src/stdlib/putenv.c

all: mk/setkey.d
mk/setkey.d: src/stdlib/setkey.c
	sh mk/deps.sh src/stdlib/setkey.c

all: mk/l64a.d
mk/l64a.d: src/stdlib/l64a.c
	sh mk/deps.sh src/stdlib/l64a.c

all: mk/strtold.d
mk/strtold.d: src/stdlib/strtold.c
	sh mk/deps.sh src/stdlib/strtold.c

all: mk/malloc.d
mk/malloc.d: src/stdlib/malloc.c
	sh mk/deps.sh src/stdlib/malloc.c

all: mk/initstate.d
mk/initstate.d: src/stdlib/initstate.c
	sh mk/deps.sh src/stdlib/initstate.c

all: mk/__stdlib.d
mk/__stdlib.d: src/stdlib/__stdlib.c
	sh mk/deps.sh src/stdlib/__stdlib.c

all: mk/realpath.d
mk/realpath.d: src/stdlib/realpath.c
	sh mk/deps.sh src/stdlib/realpath.c

all: mk/atexit.d
mk/atexit.d: src/stdlib/atexit.c
	sh mk/deps.sh src/stdlib/atexit.c

all: mk/realloc.d
mk/realloc.d: src/stdlib/realloc.c
	sh mk/deps.sh src/stdlib/realloc.c

all: mk/free.d
mk/free.d: src/stdlib/free.c
	sh mk/deps.sh src/stdlib/free.c

all: mk/wcstombs_s.d
mk/wcstombs_s.d: src/stdlib/wcstombs_s.c
	sh mk/deps.sh src/stdlib/wcstombs_s.c

all: mk/random.d
mk/random.d: src/stdlib/random.c
	sh mk/deps.sh src/stdlib/random.c

all: mk/grantpt.d
mk/grantpt.d: src/stdlib/grantpt.c
	sh mk/deps.sh src/stdlib/grantpt.c

all: mk/abort_handler_s.d
mk/abort_handler_s.d: src/stdlib/abort_handler_s.c
	sh mk/deps.sh src/stdlib/abort_handler_s.c

all: mk/seed48.d
mk/seed48.d: src/stdlib/seed48.c
	sh mk/deps.sh src/stdlib/seed48.c

all: mk/srandom.d
mk/srandom.d: src/stdlib/srandom.c
	sh mk/deps.sh src/stdlib/srandom.c

all: mk/mbstowcs.d
mk/mbstowcs.d: src/stdlib/mbstowcs.c
	sh mk/deps.sh src/stdlib/mbstowcs.c

all: mk/calloc.d
mk/calloc.d: src/stdlib/calloc.c
	sh mk/deps.sh src/stdlib/calloc.c

all: mk/set_constraint_handler_s.d
mk/set_constraint_handler_s.d: src/stdlib/set_constraint_handler_s.c
	sh mk/deps.sh src/stdlib/set_constraint_handler_s.c

all: mk/unlockpt.d
mk/unlockpt.d: src/stdlib/unlockpt.c
	sh mk/deps.sh src/stdlib/unlockpt.c

all: mk/mblen.d
mk/mblen.d: src/stdlib/mblen.c
	sh mk/deps.sh src/stdlib/mblen.c

all: mk/aligned_alloc.d
mk/aligned_alloc.d: src/stdlib/aligned_alloc.c
	sh mk/deps.sh src/stdlib/aligned_alloc.c

all: mk/setstate.d
mk/setstate.d: src/stdlib/setstate.c
	sh mk/deps.sh src/stdlib/setstate.c

all: mk/qsort_s.d
mk/qsort_s.d: src/stdlib/qsort_s.c
	sh mk/deps.sh src/stdlib/qsort_s.c

all: mk/lldiv.d
mk/lldiv.d: src/stdlib/lldiv.c
	sh mk/deps.sh src/stdlib/lldiv.c

all: mk/jrand48.d
mk/jrand48.d: src/stdlib/jrand48.c
	sh mk/deps.sh src/stdlib/jrand48.c

all: mk/mrand48.d
mk/mrand48.d: src/stdlib/mrand48.c
	sh mk/deps.sh src/stdlib/mrand48.c

all: mk/strtoll.d
mk/strtoll.d: src/stdlib/strtoll.c
	sh mk/deps.sh src/stdlib/strtoll.c

all: mk/abs.d
mk/abs.d: src/stdlib/abs.c
	sh mk/deps.sh src/stdlib/abs.c

all: mk/atoll.d
mk/atoll.d: src/stdlib/atoll.c
	sh mk/deps.sh src/stdlib/atoll.c

all: mk/bsearch.d
mk/bsearch.d: src/stdlib/bsearch.c
	sh mk/deps.sh src/stdlib/bsearch.c

all: mk/mbtowc.d
mk/mbtowc.d: src/stdlib/mbtowc.c
	sh mk/deps.sh src/stdlib/mbtowc.c

all: mk/llabs.d
mk/llabs.d: src/stdlib/llabs.c
	sh mk/deps.sh src/stdlib/llabs.c

all: mk/nrand48.d
mk/nrand48.d: src/stdlib/nrand48.c
	sh mk/deps.sh src/stdlib/nrand48.c

all: mk/quick_exit.d
mk/quick_exit.d: src/stdlib/quick_exit.c
	sh mk/deps.sh src/stdlib/quick_exit.c

all: mk/gcvt.d
mk/gcvt.d: src/stdlib/gcvt.c
	sh mk/deps.sh src/stdlib/gcvt.c

all: mk/strtoull.d
mk/strtoull.d: src/stdlib/strtoull.c
	sh mk/deps.sh src/stdlib/strtoull.c

all: mk/drand48.d
mk/drand48.d: src/stdlib/drand48.c
	sh mk/deps.sh src/stdlib/drand48.c

all: mk/ttyslot.d
mk/ttyslot.d: src/stdlib/ttyslot.c
	sh mk/deps.sh src/stdlib/ttyslot.c

all: mk/mkstemp.d
mk/mkstemp.d: src/stdlib/mkstemp.c
	sh mk/deps.sh src/stdlib/mkstemp.c

all: mk/wctomb.d
mk/wctomb.d: src/stdlib/wctomb.c
	sh mk/deps.sh src/stdlib/wctomb.c

all: mk/a64l.d
mk/a64l.d: src/stdlib/a64l.c
	sh mk/deps.sh src/stdlib/a64l.c

all: mk/getenv.d
mk/getenv.d: src/stdlib/getenv.c
	sh mk/deps.sh src/stdlib/getenv.c

all: mk/qsort.d
mk/qsort.d: src/stdlib/qsort.c
	sh mk/deps.sh src/stdlib/qsort.c

all: mk/_Exit.d
mk/_Exit.d: src/stdlib/_Exit.c
	sh mk/deps.sh src/stdlib/_Exit.c

all: mk/getenv_s.d
mk/getenv_s.d: src/stdlib/getenv_s.c
	sh mk/deps.sh src/stdlib/getenv_s.c

all: mk/getsubopt.d
mk/getsubopt.d: src/stdlib/getsubopt.c
	sh mk/deps.sh src/stdlib/getsubopt.c

all: mk/mbstowcs_s.d
mk/mbstowcs_s.d: src/stdlib/mbstowcs_s.c
	sh mk/deps.sh src/stdlib/mbstowcs_s.c

all: mk/atol.d
mk/atol.d: src/stdlib/atol.c
	sh mk/deps.sh src/stdlib/atol.c

all: mk/ptsname.d
mk/ptsname.d: src/stdlib/ptsname.c
	sh mk/deps.sh src/stdlib/ptsname.c

all: mk/modf.d
mk/modf.d: src/math/modf.c
	sh mk/deps.sh src/math/modf.c

all: mk/sinh.d
mk/sinh.d: src/math/sinh.c
	sh mk/deps.sh src/math/sinh.c

all: mk/acosh.d
mk/acosh.d: src/math/acosh.c
	sh mk/deps.sh src/math/acosh.c

all: mk/tanh.d
mk/tanh.d: src/math/tanh.c
	sh mk/deps.sh src/math/tanh.c

all: mk/j1.d
mk/j1.d: src/math/j1.c
	sh mk/deps.sh src/math/j1.c

all: mk/fma.d
mk/fma.d: src/math/fma.c
	sh mk/deps.sh src/math/fma.c

all: mk/nextafter.d
mk/nextafter.d: src/math/nextafter.c
	sh mk/deps.sh src/math/nextafter.c

all: mk/llround.d
mk/llround.d: src/math/llround.c
	sh mk/deps.sh src/math/llround.c

all: mk/exp2.d
mk/exp2.d: src/math/exp2.c
	sh mk/deps.sh src/math/exp2.c

all: mk/yn.d
mk/yn.d: src/math/yn.c
	sh mk/deps.sh src/math/yn.c

all: mk/fdim.d
mk/fdim.d: src/math/fdim.c
	sh mk/deps.sh src/math/fdim.c

all: mk/nexttoward.d
mk/nexttoward.d: src/math/nexttoward.c
	sh mk/deps.sh src/math/nexttoward.c

all: mk/scalb.d
mk/scalb.d: src/math/scalb.c
	sh mk/deps.sh src/math/scalb.c

all: mk/sqrt.d
mk/sqrt.d: src/math/sqrt.c
	sh mk/deps.sh src/math/sqrt.c

all: mk/pow.d
mk/pow.d: src/math/pow.c
	sh mk/deps.sh src/math/pow.c

all: mk/erfc.d
mk/erfc.d: src/math/erfc.c
	sh mk/deps.sh src/math/erfc.c

all: mk/lround.d
mk/lround.d: src/math/lround.c
	sh mk/deps.sh src/math/lround.c

all: mk/acos.d
mk/acos.d: src/math/acos.c
	sh mk/deps.sh src/math/acos.c

all: mk/exp.d
mk/exp.d: src/math/exp.c
	sh mk/deps.sh src/math/exp.c

all: mk/cos.d
mk/cos.d: src/math/cos.c
	sh mk/deps.sh src/math/cos.c

all: mk/asinh.d
mk/asinh.d: src/math/asinh.c
	sh mk/deps.sh src/math/asinh.c

all: mk/atanh.d
mk/atanh.d: src/math/atanh.c
	sh mk/deps.sh src/math/atanh.c

all: mk/log1p.d
mk/log1p.d: src/math/log1p.c
	sh mk/deps.sh src/math/log1p.c

all: mk/atan.d
mk/atan.d: src/math/atan.c
	sh mk/deps.sh src/math/atan.c

all: mk/logb.d
mk/logb.d: src/math/logb.c
	sh mk/deps.sh src/math/logb.c

all: mk/scalbln.d
mk/scalbln.d: src/math/scalbln.c
	sh mk/deps.sh src/math/scalbln.c

all: mk/nan.d
mk/nan.d: src/math/nan.c
	sh mk/deps.sh src/math/nan.c

all: mk/log2.d
mk/log2.d: src/math/log2.c
	sh mk/deps.sh src/math/log2.c

all: mk/signgam.d
mk/signgam.d: src/math/signgam.c
	sh mk/deps.sh src/math/signgam.c

all: mk/hypot.d
mk/hypot.d: src/math/hypot.c
	sh mk/deps.sh src/math/hypot.c

all: mk/rint.d
mk/rint.d: src/math/rint.c
	sh mk/deps.sh src/math/rint.c

all: mk/asin.d
mk/asin.d: src/math/asin.c
	sh mk/deps.sh src/math/asin.c

all: mk/cosh.d
mk/cosh.d: src/math/cosh.c
	sh mk/deps.sh src/math/cosh.c

all: mk/log.d
mk/log.d: src/math/log.c
	sh mk/deps.sh src/math/log.c

all: mk/scalbn.d
mk/scalbn.d: src/math/scalbn.c
	sh mk/deps.sh src/math/scalbn.c

all: mk/lrint.d
mk/lrint.d: src/math/lrint.c
	sh mk/deps.sh src/math/lrint.c

all: mk/ldexp.d
mk/ldexp.d: src/math/ldexp.c
	sh mk/deps.sh src/math/ldexp.c

all: mk/cbrt.d
mk/cbrt.d: src/math/cbrt.c
	sh mk/deps.sh src/math/cbrt.c

all: mk/floor.d
mk/floor.d: src/math/floor.c
	sh mk/deps.sh src/math/floor.c

all: mk/atan2.d
mk/atan2.d: src/math/atan2.c
	sh mk/deps.sh src/math/atan2.c

all: mk/y1.d
mk/y1.d: src/math/y1.c
	sh mk/deps.sh src/math/y1.c

all: mk/remquo.d
mk/remquo.d: src/math/remquo.c
	sh mk/deps.sh src/math/remquo.c

all: mk/ilogb.d
mk/ilogb.d: src/math/ilogb.c
	sh mk/deps.sh src/math/ilogb.c

all: mk/log10.d
mk/log10.d: src/math/log10.c
	sh mk/deps.sh src/math/log10.c

all: mk/lgamma.d
mk/lgamma.d: src/math/lgamma.c
	sh mk/deps.sh src/math/lgamma.c

all: mk/erf.d
mk/erf.d: src/math/erf.c
	sh mk/deps.sh src/math/erf.c

all: mk/fmin.d
mk/fmin.d: src/math/fmin.c
	sh mk/deps.sh src/math/fmin.c

all: mk/nearbyint.d
mk/nearbyint.d: src/math/nearbyint.c
	sh mk/deps.sh src/math/nearbyint.c

all: mk/fmax.d
mk/fmax.d: src/math/fmax.c
	sh mk/deps.sh src/math/fmax.c

all: mk/__fpclassify.d
mk/__fpclassify.d: src/math/__fpclassify.c
	sh mk/deps.sh src/math/__fpclassify.c

all: mk/ceil.d
mk/ceil.d: src/math/ceil.c
	sh mk/deps.sh src/math/ceil.c

all: mk/expm1.d
mk/expm1.d: src/math/expm1.c
	sh mk/deps.sh src/math/expm1.c

all: mk/frexp.d
mk/frexp.d: src/math/frexp.c
	sh mk/deps.sh src/math/frexp.c

all: mk/fabs.d
mk/fabs.d: src/math/fabs.c
	sh mk/deps.sh src/math/fabs.c

all: mk/tan.d
mk/tan.d: src/math/tan.c
	sh mk/deps.sh src/math/tan.c

all: mk/round.d
mk/round.d: src/math/round.c
	sh mk/deps.sh src/math/round.c

all: mk/gamma.d
mk/gamma.d: src/math/gamma.c
	sh mk/deps.sh src/math/gamma.c

all: mk/remainder.d
mk/remainder.d: src/math/remainder.c
	sh mk/deps.sh src/math/remainder.c

all: mk/y0.d
mk/y0.d: src/math/y0.c
	sh mk/deps.sh src/math/y0.c

all: mk/j0.d
mk/j0.d: src/math/j0.c
	sh mk/deps.sh src/math/j0.c

all: mk/fmod.d
mk/fmod.d: src/math/fmod.c
	sh mk/deps.sh src/math/fmod.c

all: mk/llrint.d
mk/llrint.d: src/math/llrint.c
	sh mk/deps.sh src/math/llrint.c

all: mk/tgamma.d
mk/tgamma.d: src/math/tgamma.c
	sh mk/deps.sh src/math/tgamma.c

all: mk/jn.d
mk/jn.d: src/math/jn.c
	sh mk/deps.sh src/math/jn.c

all: mk/trunc.d
mk/trunc.d: src/math/trunc.c
	sh mk/deps.sh src/math/trunc.c

all: mk/sin.d
mk/sin.d: src/math/sin.c
	sh mk/deps.sh src/math/sin.c

all: mk/__sigsegv.d
mk/__sigsegv.d: src/signal/__sigsegv.c
	sh mk/deps.sh src/signal/__sigsegv.c

all: mk/signal.d
mk/signal.d: src/signal/signal.c
	sh mk/deps.sh src/signal/signal.c

all: mk/sigaction.d
mk/sigaction.d: src/signal/sigaction.c
	sh mk/deps.sh src/signal/sigaction.c

all: mk/__signal_handler.d
mk/__signal_handler.d: src/signal/__signal_handler.c
	sh mk/deps.sh src/signal/__signal_handler.c

all: mk/raise.d
mk/raise.d: src/signal/raise.c
	sh mk/deps.sh src/signal/raise.c

all: mk/__signal.d
mk/__signal.d: src/signal/__signal.c
	sh mk/deps.sh src/signal/__signal.c

all: mk/kill.d
mk/kill.d: src/signal/kill.c
	sh mk/deps.sh src/signal/kill.c

all: mk/mbrtoc32.d
mk/mbrtoc32.d: src/uchar/mbrtoc32.c
	sh mk/deps.sh src/uchar/mbrtoc32.c

all: mk/c32rtomb.d
mk/c32rtomb.d: src/uchar/c32rtomb.c
	sh mk/deps.sh src/uchar/c32rtomb.c

all: mk/c16rtomb.d
mk/c16rtomb.d: src/uchar/c16rtomb.c
	sh mk/deps.sh src/uchar/c16rtomb.c

all: mk/mbrtoc16.d
mk/mbrtoc16.d: src/uchar/mbrtoc16.c
	sh mk/deps.sh src/uchar/mbrtoc16.c

all: mk/munlock.d
mk/munlock.d: src/sys/mman/munlock.c
	sh mk/deps.sh src/sys/mman/munlock.c

all: mk/shm_unlink.d
mk/shm_unlink.d: src/sys/mman/shm_unlink.c
	sh mk/deps.sh src/sys/mman/shm_unlink.c

all: mk/munmap.d
mk/munmap.d: src/sys/mman/munmap.c
	sh mk/deps.sh src/sys/mman/munmap.c

all: mk/shm_open.d
mk/shm_open.d: src/sys/mman/shm_open.c
	sh mk/deps.sh src/sys/mman/shm_open.c

all: mk/munlockall.d
mk/munlockall.d: src/sys/mman/munlockall.c
	sh mk/deps.sh src/sys/mman/munlockall.c

all: mk/mmap.d
mk/mmap.d: src/sys/mman/mmap.c
	sh mk/deps.sh src/sys/mman/mmap.c

all: mk/msync.d
mk/msync.d: src/sys/mman/msync.c
	sh mk/deps.sh src/sys/mman/msync.c

all: mk/mlock.d
mk/mlock.d: src/sys/mman/mlock.c
	sh mk/deps.sh src/sys/mman/mlock.c

all: mk/mprotect.d
mk/mprotect.d: src/sys/mman/mprotect.c
	sh mk/deps.sh src/sys/mman/mprotect.c

all: mk/mlockall.d
mk/mlockall.d: src/sys/mman/mlockall.c
	sh mk/deps.sh src/sys/mman/mlockall.c

all: mk/semctl.d
mk/semctl.d: src/sys/sem/semctl.c
	sh mk/deps.sh src/sys/sem/semctl.c

all: mk/semop.d
mk/semop.d: src/sys/sem/semop.c
	sh mk/deps.sh src/sys/sem/semop.c

all: mk/semget.d
mk/semget.d: src/sys/sem/semget.c
	sh mk/deps.sh src/sys/sem/semget.c

all: mk/getrusage.d
mk/getrusage.d: src/sys/resource/getrusage.c
	sh mk/deps.sh src/sys/resource/getrusage.c

all: mk/setrlimit.d
mk/setrlimit.d: src/sys/resource/setrlimit.c
	sh mk/deps.sh src/sys/resource/setrlimit.c

all: mk/getrlimit.d
mk/getrlimit.d: src/sys/resource/getrlimit.c
	sh mk/deps.sh src/sys/resource/getrlimit.c

all: mk/setpriority.d
mk/setpriority.d: src/sys/resource/setpriority.c
	sh mk/deps.sh src/sys/resource/setpriority.c

all: mk/getpriority.d
mk/getpriority.d: src/sys/resource/getpriority.c
	sh mk/deps.sh src/sys/resource/getpriority.c

all: mk/fstatvfs.d
mk/fstatvfs.d: src/sys/statvfs/fstatvfs.c
	sh mk/deps.sh src/sys/statvfs/fstatvfs.c

all: mk/statvfs.d
mk/statvfs.d: src/sys/statvfs/statvfs.c
	sh mk/deps.sh src/sys/statvfs/statvfs.c

all: mk/mkdir.d
mk/mkdir.d: src/sys/stat/mkdir.c
	sh mk/deps.sh src/sys/stat/mkdir.c

all: mk/chmod.d
mk/chmod.d: src/sys/stat/chmod.c
	sh mk/deps.sh src/sys/stat/chmod.c

all: mk/mkfifo.d
mk/mkfifo.d: src/sys/stat/mkfifo.c
	sh mk/deps.sh src/sys/stat/mkfifo.c

all: mk/mknod.d
mk/mknod.d: src/sys/stat/mknod.c
	sh mk/deps.sh src/sys/stat/mknod.c

all: mk/fstat.d
mk/fstat.d: src/sys/stat/fstat.c
	sh mk/deps.sh src/sys/stat/fstat.c

all: mk/stat.d
mk/stat.d: src/sys/stat/stat.c
	sh mk/deps.sh src/sys/stat/stat.c

all: mk/fchmod.d
mk/fchmod.d: src/sys/stat/fchmod.c
	sh mk/deps.sh src/sys/stat/fchmod.c

all: mk/umask.d
mk/umask.d: src/sys/stat/umask.c
	sh mk/deps.sh src/sys/stat/umask.c

all: mk/lstat.d
mk/lstat.d: src/sys/stat/lstat.c
	sh mk/deps.sh src/sys/stat/lstat.c

all: mk/readv.d
mk/readv.d: src/sys/uio/readv.c
	sh mk/deps.sh src/sys/uio/readv.c

all: mk/writev.d
mk/writev.d: src/sys/uio/writev.c
	sh mk/deps.sh src/sys/uio/writev.c

all: mk/msgrcv.d
mk/msgrcv.d: src/sys/msg/msgrcv.c
	sh mk/deps.sh src/sys/msg/msgrcv.c

all: mk/msgget.d
mk/msgget.d: src/sys/msg/msgget.c
	sh mk/deps.sh src/sys/msg/msgget.c

all: mk/msgctl.d
mk/msgctl.d: src/sys/msg/msgctl.c
	sh mk/deps.sh src/sys/msg/msgctl.c

all: mk/msgsnd.d
mk/msgsnd.d: src/sys/msg/msgsnd.c
	sh mk/deps.sh src/sys/msg/msgsnd.c

all: mk/getitimer.d
mk/getitimer.d: src/sys/time/getitimer.c
	sh mk/deps.sh src/sys/time/getitimer.c

all: mk/gettimeofday.d
mk/gettimeofday.d: src/sys/time/gettimeofday.c
	sh mk/deps.sh src/sys/time/gettimeofday.c

all: mk/setitimer.d
mk/setitimer.d: src/sys/time/setitimer.c
	sh mk/deps.sh src/sys/time/setitimer.c

all: mk/utimes.d
mk/utimes.d: src/sys/time/utimes.c
	sh mk/deps.sh src/sys/time/utimes.c

all: mk/select.d
mk/select.d: src/sys/time/select.c
	sh mk/deps.sh src/sys/time/select.c

all: mk/ftime.d
mk/ftime.d: src/sys/timeb/ftime.c
	sh mk/deps.sh src/sys/timeb/ftime.c

all: mk/shmget.d
mk/shmget.d: src/sys/shm/shmget.c
	sh mk/deps.sh src/sys/shm/shmget.c

all: mk/shmat.d
mk/shmat.d: src/sys/shm/shmat.c
	sh mk/deps.sh src/sys/shm/shmat.c

all: mk/shmctl.d
mk/shmctl.d: src/sys/shm/shmctl.c
	sh mk/deps.sh src/sys/shm/shmctl.c

all: mk/shmdt.d
mk/shmdt.d: src/sys/shm/shmdt.c
	sh mk/deps.sh src/sys/shm/shmdt.c

all: mk/ftok.d
mk/ftok.d: src/sys/ipc/ftok.c
	sh mk/deps.sh src/sys/ipc/ftok.c

all: mk/times.d
mk/times.d: src/sys/times/times.c
	sh mk/deps.sh src/sys/times/times.c

all: mk/waitpid.d
mk/waitpid.d: src/sys/wait/waitpid.c
	sh mk/deps.sh src/sys/wait/waitpid.c

all: mk/wait.d
mk/wait.d: src/sys/wait/wait.c
	sh mk/deps.sh src/sys/wait/wait.c

all: mk/waitid.d
mk/waitid.d: src/sys/wait/waitid.c
	sh mk/deps.sh src/sys/wait/waitid.c

all: mk/wait3.d
mk/wait3.d: src/sys/wait/wait3.c
	sh mk/deps.sh src/sys/wait/wait3.c

all: mk/uname.d
mk/uname.d: src/sys/utsname/uname.c
	sh mk/deps.sh src/sys/utsname/uname.c

all: mk/__assert.d
mk/__assert.d: src/assert/__assert.c
	sh mk/deps.sh src/assert/__assert.c

all: mk/assert.d
mk/assert.d: src/assert/assert.c
	sh mk/deps.sh src/assert/assert.c

all: mk/iscntrl.d
mk/iscntrl.d: src/ctype/iscntrl.c
	sh mk/deps.sh src/ctype/iscntrl.c

all: mk/isalpha.d
mk/isalpha.d: src/ctype/isalpha.c
	sh mk/deps.sh src/ctype/isalpha.c

all: mk/toupper.d
mk/toupper.d: src/ctype/toupper.c
	sh mk/deps.sh src/ctype/toupper.c

all: mk/toascii.d
mk/toascii.d: src/ctype/toascii.c
	sh mk/deps.sh src/ctype/toascii.c

all: mk/isdigit.d
mk/isdigit.d: src/ctype/isdigit.c
	sh mk/deps.sh src/ctype/isdigit.c

all: mk/isupper.d
mk/isupper.d: src/ctype/isupper.c
	sh mk/deps.sh src/ctype/isupper.c

all: mk/isspace.d
mk/isspace.d: src/ctype/isspace.c
	sh mk/deps.sh src/ctype/isspace.c

all: mk/ispunct.d
mk/ispunct.d: src/ctype/ispunct.c
	sh mk/deps.sh src/ctype/ispunct.c

all: mk/islower.d
mk/islower.d: src/ctype/islower.c
	sh mk/deps.sh src/ctype/islower.c

all: mk/isxdigit.d
mk/isxdigit.d: src/ctype/isxdigit.c
	sh mk/deps.sh src/ctype/isxdigit.c

all: mk/isascii.d
mk/isascii.d: src/ctype/isascii.c
	sh mk/deps.sh src/ctype/isascii.c

all: mk/isgraph.d
mk/isgraph.d: src/ctype/isgraph.c
	sh mk/deps.sh src/ctype/isgraph.c

all: mk/isblank.d
mk/isblank.d: src/ctype/isblank.c
	sh mk/deps.sh src/ctype/isblank.c

all: mk/tolower.d
mk/tolower.d: src/ctype/tolower.c
	sh mk/deps.sh src/ctype/tolower.c

all: mk/isprint.d
mk/isprint.d: src/ctype/isprint.c
	sh mk/deps.sh src/ctype/isprint.c

all: mk/isalnum.d
mk/isalnum.d: src/ctype/isalnum.c
	sh mk/deps.sh src/ctype/isalnum.c

all: mk/getwd.d
mk/getwd.d: src/unistd/getwd.c
	sh mk/deps.sh src/unistd/getwd.c

all: mk/optarg.d
mk/optarg.d: src/unistd/optarg.c
	sh mk/deps.sh src/unistd/optarg.c

all: mk/getpgid.d
mk/getpgid.d: src/unistd/getpgid.c
	sh mk/deps.sh src/unistd/getpgid.c

all: mk/fpathconf.d
mk/fpathconf.d: src/unistd/fpathconf.c
	sh mk/deps.sh src/unistd/fpathconf.c

all: mk/ualarm.d
mk/ualarm.d: src/unistd/ualarm.c
	sh mk/deps.sh src/unistd/ualarm.c

all: mk/alarm.d
mk/alarm.d: src/unistd/alarm.c
	sh mk/deps.sh src/unistd/alarm.c

all: mk/fdatasync.d
mk/fdatasync.d: src/unistd/fdatasync.c
	sh mk/deps.sh src/unistd/fdatasync.c

all: mk/encrypt.d
mk/encrypt.d: src/unistd/encrypt.c
	sh mk/deps.sh src/unistd/encrypt.c

all: mk/swab.d
mk/swab.d: src/unistd/swab.c
	sh mk/deps.sh src/unistd/swab.c

all: mk/chown.d
mk/chown.d: src/unistd/chown.c
	sh mk/deps.sh src/unistd/chown.c

all: mk/fsync.d
mk/fsync.d: src/unistd/fsync.c
	sh mk/deps.sh src/unistd/fsync.c

all: mk/getlogin.d
mk/getlogin.d: src/unistd/getlogin.c
	sh mk/deps.sh src/unistd/getlogin.c

all: mk/execl.d
mk/execl.d: src/unistd/execl.c
	sh mk/deps.sh src/unistd/execl.c

all: mk/lchown.d
mk/lchown.d: src/unistd/lchown.c
	sh mk/deps.sh src/unistd/lchown.c

all: mk/brk.d
mk/brk.d: src/unistd/brk.c
	sh mk/deps.sh src/unistd/brk.c

all: mk/vfork.d
mk/vfork.d: src/unistd/vfork.c
	sh mk/deps.sh src/unistd/vfork.c

all: mk/getpgrp.d
mk/getpgrp.d: src/unistd/getpgrp.c
	sh mk/deps.sh src/unistd/getpgrp.c

all: mk/pause.d
mk/pause.d: src/unistd/pause.c
	sh mk/deps.sh src/unistd/pause.c

all: mk/write.d
mk/write.d: src/unistd/write.c
	sh mk/deps.sh src/unistd/write.c

all: mk/opterr.d
mk/opterr.d: src/unistd/opterr.c
	sh mk/deps.sh src/unistd/opterr.c

all: mk/sysconf.d
mk/sysconf.d: src/unistd/sysconf.c
	sh mk/deps.sh src/unistd/sysconf.c

all: mk/execle.d
mk/execle.d: src/unistd/execle.c
	sh mk/deps.sh src/unistd/execle.c

all: mk/rmdir.d
mk/rmdir.d: src/unistd/rmdir.c
	sh mk/deps.sh src/unistd/rmdir.c

all: mk/optopt.d
mk/optopt.d: src/unistd/optopt.c
	sh mk/deps.sh src/unistd/optopt.c

all: mk/getsid.d
mk/getsid.d: src/unistd/getsid.c
	sh mk/deps.sh src/unistd/getsid.c

all: mk/access.d
mk/access.d: src/unistd/access.c
	sh mk/deps.sh src/unistd/access.c

all: mk/getpid.d
mk/getpid.d: src/unistd/getpid.c
	sh mk/deps.sh src/unistd/getpid.c

all: mk/sleep.d
mk/sleep.d: src/unistd/sleep.c
	sh mk/deps.sh src/unistd/sleep.c

all: mk/fchown.d
mk/fchown.d: src/unistd/fchown.c
	sh mk/deps.sh src/unistd/fchown.c

all: mk/confstr.d
mk/confstr.d: src/unistd/confstr.c
	sh mk/deps.sh src/unistd/confstr.c

all: mk/fchdir.d
mk/fchdir.d: src/unistd/fchdir.c
	sh mk/deps.sh src/unistd/fchdir.c

all: mk/setpgid.d
mk/setpgid.d: src/unistd/setpgid.c
	sh mk/deps.sh src/unistd/setpgid.c

all: mk/getuid.d
mk/getuid.d: src/unistd/getuid.c
	sh mk/deps.sh src/unistd/getuid.c

all: mk/getdtablesize.d
mk/getdtablesize.d: src/unistd/getdtablesize.c
	sh mk/deps.sh src/unistd/getdtablesize.c

all: mk/pipe.d
mk/pipe.d: src/unistd/pipe.c
	sh mk/deps.sh src/unistd/pipe.c

all: mk/sbrk.d
mk/sbrk.d: src/unistd/sbrk.c
	sh mk/deps.sh src/unistd/sbrk.c

all: mk/nice.d
mk/nice.d: src/unistd/nice.c
	sh mk/deps.sh src/unistd/nice.c

all: mk/setuid.d
mk/setuid.d: src/unistd/setuid.c
	sh mk/deps.sh src/unistd/setuid.c

all: mk/lseek.d
mk/lseek.d: src/unistd/lseek.c
	sh mk/deps.sh src/unistd/lseek.c

all: mk/readlink.d
mk/readlink.d: src/unistd/readlink.c
	sh mk/deps.sh src/unistd/readlink.c

all: mk/geteuid.d
mk/geteuid.d: src/unistd/geteuid.c
	sh mk/deps.sh src/unistd/geteuid.c

all: mk/setgid.d
mk/setgid.d: src/unistd/setgid.c
	sh mk/deps.sh src/unistd/setgid.c

all: mk/unlink.d
mk/unlink.d: src/unistd/unlink.c
	sh mk/deps.sh src/unistd/unlink.c

all: mk/getcwd.d
mk/getcwd.d: src/unistd/getcwd.c
	sh mk/deps.sh src/unistd/getcwd.c

all: mk/pathconf.d
mk/pathconf.d: src/unistd/pathconf.c
	sh mk/deps.sh src/unistd/pathconf.c

all: mk/ttyname.d
mk/ttyname.d: src/unistd/ttyname.c
	sh mk/deps.sh src/unistd/ttyname.c

all: mk/read.d
mk/read.d: src/unistd/read.c
	sh mk/deps.sh src/unistd/read.c

all: mk/getppid.d
mk/getppid.d: src/unistd/getppid.c
	sh mk/deps.sh src/unistd/getppid.c

all: mk/ctermid.d
mk/ctermid.d: src/unistd/ctermid.c
	sh mk/deps.sh src/unistd/ctermid.c

all: mk/execvp.d
mk/execvp.d: src/unistd/execvp.c
	sh mk/deps.sh src/unistd/execvp.c

all: mk/getegid.d
mk/getegid.d: src/unistd/getegid.c
	sh mk/deps.sh src/unistd/getegid.c

all: mk/chroot.d
mk/chroot.d: src/unistd/chroot.c
	sh mk/deps.sh src/unistd/chroot.c

all: mk/execve.d
mk/execve.d: src/unistd/execve.c
	sh mk/deps.sh src/unistd/execve.c

all: mk/execv.d
mk/execv.d: src/unistd/execv.c
	sh mk/deps.sh src/unistd/execv.c

all: mk/chdir.d
mk/chdir.d: src/unistd/chdir.c
	sh mk/deps.sh src/unistd/chdir.c

all: mk/usleep.d
mk/usleep.d: src/unistd/usleep.c
	sh mk/deps.sh src/unistd/usleep.c

all: mk/getgid.d
mk/getgid.d: src/unistd/getgid.c
	sh mk/deps.sh src/unistd/getgid.c

all: mk/gethostid.d
mk/gethostid.d: src/unistd/gethostid.c
	sh mk/deps.sh src/unistd/gethostid.c

all: mk/cuserid.d
mk/cuserid.d: src/unistd/cuserid.c
	sh mk/deps.sh src/unistd/cuserid.c

all: mk/optind.d
mk/optind.d: src/unistd/optind.c
	sh mk/deps.sh src/unistd/optind.c

all: mk/tcgetpgrp.d
mk/tcgetpgrp.d: src/unistd/tcgetpgrp.c
	sh mk/deps.sh src/unistd/tcgetpgrp.c

all: mk/symlink.d
mk/symlink.d: src/unistd/symlink.c
	sh mk/deps.sh src/unistd/symlink.c

all: mk/getgroups.d
mk/getgroups.d: src/unistd/getgroups.c
	sh mk/deps.sh src/unistd/getgroups.c

all: mk/setpgrp.d
mk/setpgrp.d: src/unistd/setpgrp.c
	sh mk/deps.sh src/unistd/setpgrp.c

all: mk/tcsetpgrp.d
mk/tcsetpgrp.d: src/unistd/tcsetpgrp.c
	sh mk/deps.sh src/unistd/tcsetpgrp.c

all: mk/setreuid.d
mk/setreuid.d: src/unistd/setreuid.c
	sh mk/deps.sh src/unistd/setreuid.c

all: mk/getpagesize.d
mk/getpagesize.d: src/unistd/getpagesize.c
	sh mk/deps.sh src/unistd/getpagesize.c

all: mk/ftruncate.d
mk/ftruncate.d: src/unistd/ftruncate.c
	sh mk/deps.sh src/unistd/ftruncate.c

all: mk/fork.d
mk/fork.d: src/unistd/fork.c
	sh mk/deps.sh src/unistd/fork.c

all: mk/sync.d
mk/sync.d: src/unistd/sync.c
	sh mk/deps.sh src/unistd/sync.c

all: mk/lockf.d
mk/lockf.d: src/unistd/lockf.c
	sh mk/deps.sh src/unistd/lockf.c

all: mk/execlp.d
mk/execlp.d: src/unistd/execlp.c
	sh mk/deps.sh src/unistd/execlp.c

all: mk/_exit.d
mk/_exit.d: src/unistd/_exit.c
	sh mk/deps.sh src/unistd/_exit.c

all: mk/setsid.d
mk/setsid.d: src/unistd/setsid.c
	sh mk/deps.sh src/unistd/setsid.c

all: mk/isatty.d
mk/isatty.d: src/unistd/isatty.c
	sh mk/deps.sh src/unistd/isatty.c

all: mk/setregid.d
mk/setregid.d: src/unistd/setregid.c
	sh mk/deps.sh src/unistd/setregid.c

all: mk/crypt.d
mk/crypt.d: src/unistd/crypt.c
	sh mk/deps.sh src/unistd/crypt.c

all: mk/getopt.d
mk/getopt.d: src/unistd/getopt.c
	sh mk/deps.sh src/unistd/getopt.c

all: mk/dup.d
mk/dup.d: src/unistd/dup.c
	sh mk/deps.sh src/unistd/dup.c

all: mk/truncate.d
mk/truncate.d: src/unistd/truncate.c
	sh mk/deps.sh src/unistd/truncate.c

all: mk/dup2.d
mk/dup2.d: src/unistd/dup2.c
	sh mk/deps.sh src/unistd/dup2.c

all: mk/close.d
mk/close.d: src/unistd/close.c
	sh mk/deps.sh src/unistd/close.c

all: mk/getpass.d
mk/getpass.d: src/unistd/getpass.c
	sh mk/deps.sh src/unistd/getpass.c

all: mk/link.d
mk/link.d: src/unistd/link.c
	sh mk/deps.sh src/unistd/link.c

all: mk/clock_settime.d
mk/clock_settime.d: src/time/clock_settime.c
	sh mk/deps.sh src/time/clock_settime.c

all: mk/tzname.d
mk/tzname.d: src/time/tzname.c
	sh mk/deps.sh src/time/tzname.c

all: mk/timer_settime.d
mk/timer_settime.d: src/time/timer_settime.c
	sh mk/deps.sh src/time/timer_settime.c

all: mk/strftime.d
mk/strftime.d: src/time/strftime.c
	sh mk/deps.sh src/time/strftime.c

all: mk/time.d
mk/time.d: src/time/time.c
	sh mk/deps.sh src/time/time.c

all: mk/timezone.d
mk/timezone.d: src/time/timezone.c
	sh mk/deps.sh src/time/timezone.c

all: mk/strptime.d
mk/strptime.d: src/time/strptime.c
	sh mk/deps.sh src/time/strptime.c

all: mk/daylight.d
mk/daylight.d: src/time/daylight.c
	sh mk/deps.sh src/time/daylight.c

all: mk/asctime.d
mk/asctime.d: src/time/asctime.c
	sh mk/deps.sh src/time/asctime.c

all: mk/ctime.d
mk/ctime.d: src/time/ctime.c
	sh mk/deps.sh src/time/ctime.c

all: mk/timer_create.d
mk/timer_create.d: src/time/timer_create.c
	sh mk/deps.sh src/time/timer_create.c

all: mk/getdate_err.d
mk/getdate_err.d: src/time/getdate_err.c
	sh mk/deps.sh src/time/getdate_err.c

all: mk/ctime_s.d
mk/ctime_s.d: src/time/ctime_s.c
	sh mk/deps.sh src/time/ctime_s.c

all: mk/gmtime.d
mk/gmtime.d: src/time/gmtime.c
	sh mk/deps.sh src/time/gmtime.c

all: mk/gmtime_s.d
mk/gmtime_s.d: src/time/gmtime_s.c
	sh mk/deps.sh src/time/gmtime_s.c

all: mk/tzset.d
mk/tzset.d: src/time/tzset.c
	sh mk/deps.sh src/time/tzset.c

all: mk/timer_delete.d
mk/timer_delete.d: src/time/timer_delete.c
	sh mk/deps.sh src/time/timer_delete.c

all: mk/clock_getres.d
mk/clock_getres.d: src/time/clock_getres.c
	sh mk/deps.sh src/time/clock_getres.c

all: mk/difftime.d
mk/difftime.d: src/time/difftime.c
	sh mk/deps.sh src/time/difftime.c

all: mk/timer_getoverrun.d
mk/timer_getoverrun.d: src/time/timer_getoverrun.c
	sh mk/deps.sh src/time/timer_getoverrun.c

all: mk/localtime.d
mk/localtime.d: src/time/localtime.c
	sh mk/deps.sh src/time/localtime.c

all: mk/getdate.d
mk/getdate.d: src/time/getdate.c
	sh mk/deps.sh src/time/getdate.c

all: mk/nanosleep.d
mk/nanosleep.d: src/time/nanosleep.c
	sh mk/deps.sh src/time/nanosleep.c

all: mk/timer_gettime.d
mk/timer_gettime.d: src/time/timer_gettime.c
	sh mk/deps.sh src/time/timer_gettime.c

all: mk/clock_gettime.d
mk/clock_gettime.d: src/time/clock_gettime.c
	sh mk/deps.sh src/time/clock_gettime.c

all: mk/__time.d
mk/__time.d: src/time/__time.c
	sh mk/deps.sh src/time/__time.c

all: mk/timespec_get.d
mk/timespec_get.d: src/time/timespec_get.c
	sh mk/deps.sh src/time/timespec_get.c

all: mk/localtime_s.d
mk/localtime_s.d: src/time/localtime_s.c
	sh mk/deps.sh src/time/localtime_s.c

all: mk/asctime_s.d
mk/asctime_s.d: src/time/asctime_s.c
	sh mk/deps.sh src/time/asctime_s.c

all: mk/mktime.d
mk/mktime.d: src/time/mktime.c
	sh mk/deps.sh src/time/mktime.c

all: mk/__main.d
mk/__main.d: src/__main.c
	sh mk/deps.sh src/__main.c

all: mk/environ.d
mk/environ.d: src/environ.c
	sh mk/deps.sh src/environ.c

all: mk/_longjmp.d
mk/_longjmp.d: src/setjmp/_longjmp.c
	sh mk/deps.sh src/setjmp/_longjmp.c

all: mk/_setjmp.d
mk/_setjmp.d: src/setjmp/_setjmp.c
	sh mk/deps.sh src/setjmp/_setjmp.c

all: mk/setjmp.d
mk/setjmp.d: src/setjmp/setjmp.c
	sh mk/deps.sh src/setjmp/setjmp.c

all: mk/siglongjmp.d
mk/siglongjmp.d: src/setjmp/siglongjmp.c
	sh mk/deps.sh src/setjmp/siglongjmp.c

all: mk/longjmp.d
mk/longjmp.d: src/setjmp/longjmp.c
	sh mk/deps.sh src/setjmp/longjmp.c

all: mk/sigsetjmp.d
mk/sigsetjmp.d: src/setjmp/sigsetjmp.c
	sh mk/deps.sh src/setjmp/sigsetjmp.c

all: mk/nl_langinfo.d
mk/nl_langinfo.d: src/langinfo/nl_langinfo.c
	sh mk/deps.sh src/langinfo/nl_langinfo.c

all: mk/fputs.d
mk/fputs.d: src/stdio/fputs.c
	sh mk/deps.sh src/stdio/fputs.c

all: mk/fwrite.d
mk/fwrite.d: src/stdio/fwrite.c
	sh mk/deps.sh src/stdio/fwrite.c

all: mk/vscanf.d
mk/vscanf.d: src/stdio/vscanf.c
	sh mk/deps.sh src/stdio/vscanf.c

all: mk/fputc.d
mk/fputc.d: src/stdio/fputc.c
	sh mk/deps.sh src/stdio/fputc.c

all: mk/vfprintf.d
mk/vfprintf.d: src/stdio/vfprintf.c
	sh mk/deps.sh src/stdio/vfprintf.c

all: mk/getchar_unlocked.d
mk/getchar_unlocked.d: src/stdio/getchar_unlocked.c
	sh mk/deps.sh src/stdio/getchar_unlocked.c

all: mk/ferror.d
mk/ferror.d: src/stdio/ferror.c
	sh mk/deps.sh src/stdio/ferror.c

all: mk/fgetc.d
mk/fgetc.d: src/stdio/fgetc.c
	sh mk/deps.sh src/stdio/fgetc.c

all: mk/fileno.d
mk/fileno.d: src/stdio/fileno.c
	sh mk/deps.sh src/stdio/fileno.c

all: mk/funlockfile.d
mk/funlockfile.d: src/stdio/funlockfile.c
	sh mk/deps.sh src/stdio/funlockfile.c

all: mk/popen.d
mk/popen.d: src/stdio/popen.c
	sh mk/deps.sh src/stdio/popen.c

all: mk/fprintf_s.d
mk/fprintf_s.d: src/stdio/fprintf_s.c
	sh mk/deps.sh src/stdio/fprintf_s.c

all: mk/putc.d
mk/putc.d: src/stdio/putc.c
	sh mk/deps.sh src/stdio/putc.c

all: mk/scanf.d
mk/scanf.d: src/stdio/scanf.c
	sh mk/deps.sh src/stdio/scanf.c

all: mk/getw.d
mk/getw.d: src/stdio/getw.c
	sh mk/deps.sh src/stdio/getw.c

all: mk/sscanf_s.d
mk/sscanf_s.d: src/stdio/sscanf_s.c
	sh mk/deps.sh src/stdio/sscanf_s.c

all: mk/sscanf.d
mk/sscanf.d: src/stdio/sscanf.c
	sh mk/deps.sh src/stdio/sscanf.c

all: mk/ftell.d
mk/ftell.d: src/stdio/ftell.c
	sh mk/deps.sh src/stdio/ftell.c

all: mk/__printf.d
mk/__printf.d: src/stdio/__printf.c
	sh mk/deps.sh src/stdio/__printf.c

all: mk/printf_s.d
mk/printf_s.d: src/stdio/printf_s.c
	sh mk/deps.sh src/stdio/printf_s.c

all: mk/fseek.d
mk/fseek.d: src/stdio/fseek.c
	sh mk/deps.sh src/stdio/fseek.c

all: mk/puts.d
mk/puts.d: src/stdio/puts.c
	sh mk/deps.sh src/stdio/puts.c

all: mk/__stdin.d
mk/__stdin.d: src/stdio/__stdin.c
	sh mk/deps.sh src/stdio/__stdin.c

all: mk/vprintf.d
mk/vprintf.d: src/stdio/vprintf.c
	sh mk/deps.sh src/stdio/vprintf.c

all: mk/fread.d
mk/fread.d: src/stdio/fread.c
	sh mk/deps.sh src/stdio/fread.c

all: mk/vscanf_s.d
mk/vscanf_s.d: src/stdio/vscanf_s.c
	sh mk/deps.sh src/stdio/vscanf_s.c

all: mk/__stderr.d
mk/__stderr.d: src/stdio/__stderr.c
	sh mk/deps.sh src/stdio/__stderr.c

all: mk/freopen.d
mk/freopen.d: src/stdio/freopen.c
	sh mk/deps.sh src/stdio/freopen.c

all: mk/putchar_unlocked.d
mk/putchar_unlocked.d: src/stdio/putchar_unlocked.c
	sh mk/deps.sh src/stdio/putchar_unlocked.c

all: mk/setbuf.d
mk/setbuf.d: src/stdio/setbuf.c
	sh mk/deps.sh src/stdio/setbuf.c

all: mk/freopen_s.d
mk/freopen_s.d: src/stdio/freopen_s.c
	sh mk/deps.sh src/stdio/freopen_s.c

all: mk/pclose.d
mk/pclose.d: src/stdio/pclose.c
	sh mk/deps.sh src/stdio/pclose.c

all: mk/scanf_s.d
mk/scanf_s.d: src/stdio/scanf_s.c
	sh mk/deps.sh src/stdio/scanf_s.c

all: mk/vsnprintf_s.d
mk/vsnprintf_s.d: src/stdio/vsnprintf_s.c
	sh mk/deps.sh src/stdio/vsnprintf_s.c

all: mk/tmpfile_s.d
mk/tmpfile_s.d: src/stdio/tmpfile_s.c
	sh mk/deps.sh src/stdio/tmpfile_s.c

all: mk/vsnprintf.d
mk/vsnprintf.d: src/stdio/vsnprintf.c
	sh mk/deps.sh src/stdio/vsnprintf.c

all: mk/rewind.d
mk/rewind.d: src/stdio/rewind.c
	sh mk/deps.sh src/stdio/rewind.c

all: mk/__stdio.d
mk/__stdio.d: src/stdio/__stdio.c
	sh mk/deps.sh src/stdio/__stdio.c

all: mk/sprintf.d
mk/sprintf.d: src/stdio/sprintf.c
	sh mk/deps.sh src/stdio/sprintf.c

all: mk/vfscanf_s.d
mk/vfscanf_s.d: src/stdio/vfscanf_s.c
	sh mk/deps.sh src/stdio/vfscanf_s.c

all: mk/vfscanf.d
mk/vfscanf.d: src/stdio/vfscanf.c
	sh mk/deps.sh src/stdio/vfscanf.c

all: mk/clearerr.d
mk/clearerr.d: src/stdio/clearerr.c
	sh mk/deps.sh src/stdio/clearerr.c

all: mk/tmpnam_s.d
mk/tmpnam_s.d: src/stdio/tmpnam_s.c
	sh mk/deps.sh src/stdio/tmpnam_s.c

all: mk/__stdout.d
mk/__stdout.d: src/stdio/__stdout.c
	sh mk/deps.sh src/stdio/__stdout.c

all: mk/snprintf_s.d
mk/snprintf_s.d: src/stdio/snprintf_s.c
	sh mk/deps.sh src/stdio/snprintf_s.c

all: mk/getc_unlocked.d
mk/getc_unlocked.d: src/stdio/getc_unlocked.c
	sh mk/deps.sh src/stdio/getc_unlocked.c

all: mk/fprintf.d
mk/fprintf.d: src/stdio/fprintf.c
	sh mk/deps.sh src/stdio/fprintf.c

all: mk/getc.d
mk/getc.d: src/stdio/getc.c
	sh mk/deps.sh src/stdio/getc.c

all: mk/vsprintf_s.d
mk/vsprintf_s.d: src/stdio/vsprintf_s.c
	sh mk/deps.sh src/stdio/vsprintf_s.c

all: mk/rename.d
mk/rename.d: src/stdio/rename.c
	sh mk/deps.sh src/stdio/rename.c

all: mk/flockfile.d
mk/flockfile.d: src/stdio/flockfile.c
	sh mk/deps.sh src/stdio/flockfile.c

all: mk/perror.d
mk/perror.d: src/stdio/perror.c
	sh mk/deps.sh src/stdio/perror.c

all: mk/putc_unlocked.d
mk/putc_unlocked.d: src/stdio/putc_unlocked.c
	sh mk/deps.sh src/stdio/putc_unlocked.c

all: mk/fsetpos.d
mk/fsetpos.d: src/stdio/fsetpos.c
	sh mk/deps.sh src/stdio/fsetpos.c

all: mk/tmpnam.d
mk/tmpnam.d: src/stdio/tmpnam.c
	sh mk/deps.sh src/stdio/tmpnam.c

all: mk/fclose.d
mk/fclose.d: src/stdio/fclose.c
	sh mk/deps.sh src/stdio/fclose.c

all: mk/__scanf.d
mk/__scanf.d: src/stdio/__scanf.c
	sh mk/deps.sh src/stdio/__scanf.c

all: mk/feof.d
mk/feof.d: src/stdio/feof.c
	sh mk/deps.sh src/stdio/feof.c

all: mk/fscanf.d
mk/fscanf.d: src/stdio/fscanf.c
	sh mk/deps.sh src/stdio/fscanf.c

all: mk/fscanf_s.d
mk/fscanf_s.d: src/stdio/fscanf_s.c
	sh mk/deps.sh src/stdio/fscanf_s.c

all: mk/vfprintf_s.d
mk/vfprintf_s.d: src/stdio/vfprintf_s.c
	sh mk/deps.sh src/stdio/vfprintf_s.c

all: mk/snprintf.d
mk/snprintf.d: src/stdio/snprintf.c
	sh mk/deps.sh src/stdio/snprintf.c

all: mk/gets.d
mk/gets.d: src/stdio/gets.c
	sh mk/deps.sh src/stdio/gets.c

all: mk/sprintf_s.d
mk/sprintf_s.d: src/stdio/sprintf_s.c
	sh mk/deps.sh src/stdio/sprintf_s.c

all: mk/vprintf_s.d
mk/vprintf_s.d: src/stdio/vprintf_s.c
	sh mk/deps.sh src/stdio/vprintf_s.c

all: mk/tempnam.d
mk/tempnam.d: src/stdio/tempnam.c
	sh mk/deps.sh src/stdio/tempnam.c

all: mk/fopen_s.d
mk/fopen_s.d: src/stdio/fopen_s.c
	sh mk/deps.sh src/stdio/fopen_s.c

all: mk/remove.d
mk/remove.d: src/stdio/remove.c
	sh mk/deps.sh src/stdio/remove.c

all: mk/putchar.d
mk/putchar.d: src/stdio/putchar.c
	sh mk/deps.sh src/stdio/putchar.c

all: mk/vsprintf.d
mk/vsprintf.d: src/stdio/vsprintf.c
	sh mk/deps.sh src/stdio/vsprintf.c

all: mk/vsscanf_s.d
mk/vsscanf_s.d: src/stdio/vsscanf_s.c
	sh mk/deps.sh src/stdio/vsscanf_s.c

all: mk/printf.d
mk/printf.d: src/stdio/printf.c
	sh mk/deps.sh src/stdio/printf.c

all: mk/ungetc.d
mk/ungetc.d: src/stdio/ungetc.c
	sh mk/deps.sh src/stdio/ungetc.c

all: mk/gets_s.d
mk/gets_s.d: src/stdio/gets_s.c
	sh mk/deps.sh src/stdio/gets_s.c

all: mk/fdopen.d
mk/fdopen.d: src/stdio/fdopen.c
	sh mk/deps.sh src/stdio/fdopen.c

all: mk/vsscanf.d
mk/vsscanf.d: src/stdio/vsscanf.c
	sh mk/deps.sh src/stdio/vsscanf.c

all: mk/fgetpos.d
mk/fgetpos.d: src/stdio/fgetpos.c
	sh mk/deps.sh src/stdio/fgetpos.c

all: mk/setvbuf.d
mk/setvbuf.d: src/stdio/setvbuf.c
	sh mk/deps.sh src/stdio/setvbuf.c

all: mk/putw.d
mk/putw.d: src/stdio/putw.c
	sh mk/deps.sh src/stdio/putw.c

all: mk/fflush.d
mk/fflush.d: src/stdio/fflush.c
	sh mk/deps.sh src/stdio/fflush.c

all: mk/__errno.d
mk/__errno.d: src/errno/__errno.c
	sh mk/deps.sh src/errno/__errno.c

all: mk/thrd_current.d
mk/thrd_current.d: src/threads/thrd_current.c
	sh mk/deps.sh src/threads/thrd_current.c

all: mk/cnd_timedwait.d
mk/cnd_timedwait.d: src/threads/cnd_timedwait.c
	sh mk/deps.sh src/threads/cnd_timedwait.c

all: mk/call_once.d
mk/call_once.d: src/threads/call_once.c
	sh mk/deps.sh src/threads/call_once.c

all: mk/thrd_join.d
mk/thrd_join.d: src/threads/thrd_join.c
	sh mk/deps.sh src/threads/thrd_join.c

all: mk/thrd_equal.d
mk/thrd_equal.d: src/threads/thrd_equal.c
	sh mk/deps.sh src/threads/thrd_equal.c

all: mk/thrd_create.d
mk/thrd_create.d: src/threads/thrd_create.c
	sh mk/deps.sh src/threads/thrd_create.c

all: mk/tss_create.d
mk/tss_create.d: src/threads/tss_create.c
	sh mk/deps.sh src/threads/tss_create.c

all: mk/mtx_timedlock.d
mk/mtx_timedlock.d: src/threads/mtx_timedlock.c
	sh mk/deps.sh src/threads/mtx_timedlock.c

all: mk/cnd_wait.d
mk/cnd_wait.d: src/threads/cnd_wait.c
	sh mk/deps.sh src/threads/cnd_wait.c

all: mk/cnd_destroy.d
mk/cnd_destroy.d: src/threads/cnd_destroy.c
	sh mk/deps.sh src/threads/cnd_destroy.c

all: mk/thrd_detach.d
mk/thrd_detach.d: src/threads/thrd_detach.c
	sh mk/deps.sh src/threads/thrd_detach.c

all: mk/cnd_signal.d
mk/cnd_signal.d: src/threads/cnd_signal.c
	sh mk/deps.sh src/threads/cnd_signal.c

all: mk/mtx_init.d
mk/mtx_init.d: src/threads/mtx_init.c
	sh mk/deps.sh src/threads/mtx_init.c

all: mk/mtx_unlock.d
mk/mtx_unlock.d: src/threads/mtx_unlock.c
	sh mk/deps.sh src/threads/mtx_unlock.c

all: mk/mtx_lock.d
mk/mtx_lock.d: src/threads/mtx_lock.c
	sh mk/deps.sh src/threads/mtx_lock.c

all: mk/thrd_sleep.d
mk/thrd_sleep.d: src/threads/thrd_sleep.c
	sh mk/deps.sh src/threads/thrd_sleep.c

all: mk/tss_delete.d
mk/tss_delete.d: src/threads/tss_delete.c
	sh mk/deps.sh src/threads/tss_delete.c

all: mk/thrd_yield.d
mk/thrd_yield.d: src/threads/thrd_yield.c
	sh mk/deps.sh src/threads/thrd_yield.c

all: mk/cnd_init.d
mk/cnd_init.d: src/threads/cnd_init.c
	sh mk/deps.sh src/threads/cnd_init.c

all: mk/tss_get.d
mk/tss_get.d: src/threads/tss_get.c
	sh mk/deps.sh src/threads/tss_get.c

all: mk/mtx_trylock.d
mk/mtx_trylock.d: src/threads/mtx_trylock.c
	sh mk/deps.sh src/threads/mtx_trylock.c

all: mk/mtx_destroy.d
mk/mtx_destroy.d: src/threads/mtx_destroy.c
	sh mk/deps.sh src/threads/mtx_destroy.c

all: mk/thrd_exit.d
mk/thrd_exit.d: src/threads/thrd_exit.c
	sh mk/deps.sh src/threads/thrd_exit.c

all: mk/tss_set.d
mk/tss_set.d: src/threads/tss_set.c
	sh mk/deps.sh src/threads/tss_set.c

all: mk/cnd_broadcast.d
mk/cnd_broadcast.d: src/threads/cnd_broadcast.c
	sh mk/deps.sh src/threads/cnd_broadcast.c

all: mk/iswlower.d
mk/iswlower.d: src/wctype/iswlower.c
	sh mk/deps.sh src/wctype/iswlower.c

all: mk/iswxdigit.d
mk/iswxdigit.d: src/wctype/iswxdigit.c
	sh mk/deps.sh src/wctype/iswxdigit.c

all: mk/iswpunct.d
mk/iswpunct.d: src/wctype/iswpunct.c
	sh mk/deps.sh src/wctype/iswpunct.c

all: mk/towupper.d
mk/towupper.d: src/wctype/towupper.c
	sh mk/deps.sh src/wctype/towupper.c

all: mk/iswcntrl.d
mk/iswcntrl.d: src/wctype/iswcntrl.c
	sh mk/deps.sh src/wctype/iswcntrl.c

all: mk/iswprint.d
mk/iswprint.d: src/wctype/iswprint.c
	sh mk/deps.sh src/wctype/iswprint.c

all: mk/iswblank.d
mk/iswblank.d: src/wctype/iswblank.c
	sh mk/deps.sh src/wctype/iswblank.c

all: mk/iswgraph.d
mk/iswgraph.d: src/wctype/iswgraph.c
	sh mk/deps.sh src/wctype/iswgraph.c

all: mk/towctrans.d
mk/towctrans.d: src/wctype/towctrans.c
	sh mk/deps.sh src/wctype/towctrans.c

all: mk/iswdigit.d
mk/iswdigit.d: src/wctype/iswdigit.c
	sh mk/deps.sh src/wctype/iswdigit.c

all: mk/iswctype.d
mk/iswctype.d: src/wctype/iswctype.c
	sh mk/deps.sh src/wctype/iswctype.c

all: mk/wctype.d
mk/wctype.d: src/wctype/wctype.c
	sh mk/deps.sh src/wctype/wctype.c

all: mk/wctrans.d
mk/wctrans.d: src/wctype/wctrans.c
	sh mk/deps.sh src/wctype/wctrans.c

all: mk/iswalnum.d
mk/iswalnum.d: src/wctype/iswalnum.c
	sh mk/deps.sh src/wctype/iswalnum.c

all: mk/iswupper.d
mk/iswupper.d: src/wctype/iswupper.c
	sh mk/deps.sh src/wctype/iswupper.c

all: mk/iswalpha.d
mk/iswalpha.d: src/wctype/iswalpha.c
	sh mk/deps.sh src/wctype/iswalpha.c

all: mk/iswspace.d
mk/iswspace.d: src/wctype/iswspace.c
	sh mk/deps.sh src/wctype/iswspace.c

all: mk/towlower.d
mk/towlower.d: src/wctype/towlower.c
	sh mk/deps.sh src/wctype/towlower.c

all: mk/feclearexcept.d
mk/feclearexcept.d: src/fenv/feclearexcept.c
	sh mk/deps.sh src/fenv/feclearexcept.c

all: mk/fesetround.d
mk/fesetround.d: src/fenv/fesetround.c
	sh mk/deps.sh src/fenv/fesetround.c

all: mk/feholdexcept.d
mk/feholdexcept.d: src/fenv/feholdexcept.c
	sh mk/deps.sh src/fenv/feholdexcept.c

all: mk/feraiseexcept.d
mk/feraiseexcept.d: src/fenv/feraiseexcept.c
	sh mk/deps.sh src/fenv/feraiseexcept.c

all: mk/feupdateenv.d
mk/feupdateenv.d: src/fenv/feupdateenv.c
	sh mk/deps.sh src/fenv/feupdateenv.c

all: mk/fegetenv.d
mk/fegetenv.d: src/fenv/fegetenv.c
	sh mk/deps.sh src/fenv/fegetenv.c

all: mk/fesetenv.d
mk/fesetenv.d: src/fenv/fesetenv.c
	sh mk/deps.sh src/fenv/fesetenv.c

all: mk/fesetexceptflag.d
mk/fesetexceptflag.d: src/fenv/fesetexceptflag.c
	sh mk/deps.sh src/fenv/fesetexceptflag.c

all: mk/fetestexcept.d
mk/fetestexcept.d: src/fenv/fetestexcept.c
	sh mk/deps.sh src/fenv/fetestexcept.c

all: mk/fegetexceptflag.d
mk/fegetexceptflag.d: src/fenv/fegetexceptflag.c
	sh mk/deps.sh src/fenv/fegetexceptflag.c

all: mk/__checked_i.d
mk/__checked_i.d: src/__checked_i.c
	sh mk/deps.sh src/__checked_i.c

all: mk/__sys.x86-64.s.d
mk/__sys.x86-64.s.d: src/__sys.x86-64.s
	sh mk/deps.sh src/__sys.x86-64.s

all: mk/__setjmp.x86-64.s.d
mk/__setjmp.x86-64.s.d: src/setjmp/__setjmp.x86-64.s
	sh mk/deps.sh src/setjmp/__setjmp.x86-64.s

all: mk/__longjmp.x86-64.s.d
mk/__longjmp.x86-64.s.d: src/setjmp/__longjmp.x86-64.s
	sh mk/deps.sh src/setjmp/__longjmp.x86-64.s


libc_C.0: libc.a(_POSIX_C_SOURCE.o)
libc.a(_POSIX_C_SOURCE.o): $(OBJDIR)/_POSIX_C_SOURCE.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_POSIX_C_SOURCE.o: src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c
$(OBJDIR)/_POSIX_C_SOURCE.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c

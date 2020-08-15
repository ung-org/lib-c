libc_C.0: libc.a(_XOPEN_SOURCE.o)
libc.a(_XOPEN_SOURCE.o): $(OBJDIR)/_XOPEN_SOURCE.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_XOPEN_SOURCE.o: src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c
$(OBJDIR)/_XOPEN_SOURCE.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c

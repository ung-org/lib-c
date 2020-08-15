libc_C.1: libc.a(localeconv.o)
libc.a(localeconv.o): $(OBJDIR)/localeconv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/localeconv.o: src/locale/localeconv.c
$(OBJDIR)/localeconv.o: src/locale/_locale.h
$(OBJDIR)/localeconv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/locale/localeconv.c

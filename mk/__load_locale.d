libc_C.0: libc.a(__load_locale.o)
libc.a(__load_locale.o): $(OBJDIR)/__load_locale.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__load_locale.o: src/locale/__load_locale.c
$(OBJDIR)/__load_locale.o: src/locale/_locale.h
$(OBJDIR)/__load_locale.o: src/ctype/_ctype.h
$(OBJDIR)/__load_locale.o: src/_safety.h
$(OBJDIR)/__load_locale.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/locale/__load_locale.c

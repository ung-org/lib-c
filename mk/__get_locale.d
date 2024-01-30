libc_C.0: libc.a(__get_locale.o)
libc.a(__get_locale.o): $(OBJDIR)/__get_locale.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__get_locale.o: src/locale/__get_locale.c
$(OBJDIR)/__get_locale.o: src/locale/_locale.h
$(OBJDIR)/__get_locale.o: src/_safety.h
$(OBJDIR)/__get_locale.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/locale/__get_locale.c

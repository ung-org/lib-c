libc_X.4: libc.a(toascii.o)
libc.a(toascii.o): $(OBJDIR)/toascii.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/toascii.o: src/ctype/toascii.c
$(OBJDIR)/toascii.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/ctype/toascii.c

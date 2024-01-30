libc_X.4: libc.a(isascii.o)
libc.a(isascii.o): $(OBJDIR)/isascii.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isascii.o: src/ctype/isascii.c
$(OBJDIR)/isascii.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/ctype/isascii.c

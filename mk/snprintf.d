libc_C.199901: libc.a(snprintf.o)
libc.a(snprintf.o): $(OBJDIR)/snprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/snprintf.o: src/stdio/snprintf.c
$(OBJDIR)/snprintf.o: src/stdio/_stdio.h
$(OBJDIR)/snprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/snprintf.c

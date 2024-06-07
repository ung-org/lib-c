libc_C.1: libc.a(vprintf.o)
libc.a(vprintf.o): $(OBJDIR)/vprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vprintf.o: src/stdio/vprintf.c
$(OBJDIR)/vprintf.o: src/stdio/_format.h
$(OBJDIR)/vprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vprintf.c

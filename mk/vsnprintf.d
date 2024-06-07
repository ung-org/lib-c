libc_C.199901: libc.a(vsnprintf.o)
libc.a(vsnprintf.o): $(OBJDIR)/vsnprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsnprintf.o: src/stdio/vsnprintf.c
$(OBJDIR)/vsnprintf.o: src/stdio/_format.h
$(OBJDIR)/vsnprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vsnprintf.c

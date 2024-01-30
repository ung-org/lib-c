libc_C.1: libc.a(vfprintf.o)
libc.a(vfprintf.o): $(OBJDIR)/vfprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfprintf.o: src/stdio/vfprintf.c
$(OBJDIR)/vfprintf.o: src/stdio/_stdio.h
$(OBJDIR)/vfprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vfprintf.c

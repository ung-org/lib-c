libc_C.1: libc.a(freopen.o)
libc.a(freopen.o): $(OBJDIR)/freopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/freopen.o: src/stdio/freopen.c
$(OBJDIR)/freopen.o: src/stdio/_stdio.h
$(OBJDIR)/freopen.o: src/_forced/open.h
$(OBJDIR)/freopen.o: src/_forced/isatty.h
$(OBJDIR)/freopen.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/freopen.c

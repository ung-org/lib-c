libc_P.1: libc.a(fdopen.o)
libc.a(fdopen.o): $(OBJDIR)/fdopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fdopen.o: src/stdio/fdopen.c
$(OBJDIR)/fdopen.o: src/stdio/_stdio.h
$(OBJDIR)/fdopen.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fdopen.c

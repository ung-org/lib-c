libc_C.1: libc.a(scanf.o)
libc.a(scanf.o): $(OBJDIR)/scanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scanf.o: src/stdio/scanf.c
$(OBJDIR)/scanf.o: src/stdio/_stdio.h
$(OBJDIR)/scanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/scanf.c

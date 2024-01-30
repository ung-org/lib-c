libc_X.4: libc.a(getw.o)
libc.a(getw.o): $(OBJDIR)/getw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getw.o: src/stdio/getw.c
$(OBJDIR)/getw.o: src/stdio/_stdio.h
$(OBJDIR)/getw.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/getw.c

libc_P.199506: libc.a(funlockfile.o)
libc.a(funlockfile.o): $(OBJDIR)/funlockfile.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/funlockfile.o: src/stdio/funlockfile.c
$(OBJDIR)/funlockfile.o: src/stdio/_stdio.h
$(OBJDIR)/funlockfile.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/funlockfile.c

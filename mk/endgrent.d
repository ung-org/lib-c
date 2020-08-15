libc_X.400: libc.a(endgrent.o)
libc.a(endgrent.o): $(OBJDIR)/endgrent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/endgrent.o: src/grp/endgrent.c
$(OBJDIR)/endgrent.o: src/grp/_grp.h
$(OBJDIR)/endgrent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/endgrent.c

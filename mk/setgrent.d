libc_X.400: libc.a(setgrent.o)
libc.a(setgrent.o): $(OBJDIR)/setgrent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setgrent.o: src/grp/setgrent.c
$(OBJDIR)/setgrent.o: src/grp/_grp.h
$(OBJDIR)/setgrent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/setgrent.c

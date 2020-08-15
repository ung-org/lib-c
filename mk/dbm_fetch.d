libc_X.400: libc.a(dbm_fetch.o)
libc.a(dbm_fetch.o): $(OBJDIR)/dbm_fetch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_fetch.o: src/ndbm/dbm_fetch.c
$(OBJDIR)/dbm_fetch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_fetch.c

libc_X.400: libc.a(dbm_store.o)
libc.a(dbm_store.o): $(OBJDIR)/dbm_store.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_store.o: src/ndbm/dbm_store.c
$(OBJDIR)/dbm_store.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_store.c

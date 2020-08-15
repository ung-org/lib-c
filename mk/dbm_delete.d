libc_X.400: libc.a(dbm_delete.o)
libc.a(dbm_delete.o): $(OBJDIR)/dbm_delete.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_delete.o: src/ndbm/dbm_delete.c
$(OBJDIR)/dbm_delete.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_delete.c

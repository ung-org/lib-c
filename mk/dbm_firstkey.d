libc_X.400: libc.a(dbm_firstkey.o)
libc.a(dbm_firstkey.o): $(OBJDIR)/dbm_firstkey.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_firstkey.o: src/ndbm/dbm_firstkey.c
$(OBJDIR)/dbm_firstkey.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_firstkey.c

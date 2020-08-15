libc_X.400: libc.a(dbm_error.o)
libc.a(dbm_error.o): $(OBJDIR)/dbm_error.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_error.o: src/ndbm/dbm_error.c
$(OBJDIR)/dbm_error.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_error.c

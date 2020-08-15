libc_X.400: libc.a(dbm_open.o)
libc.a(dbm_open.o): $(OBJDIR)/dbm_open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_open.o: src/ndbm/dbm_open.c
$(OBJDIR)/dbm_open.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_open.c

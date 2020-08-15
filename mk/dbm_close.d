libc_X.400: libc.a(dbm_close.o)
libc.a(dbm_close.o): $(OBJDIR)/dbm_close.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_close.o: src/ndbm/dbm_close.c
$(OBJDIR)/dbm_close.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_close.c

libc_X.400: libc.a(dbm_clearerr.o)
libc.a(dbm_clearerr.o): $(OBJDIR)/dbm_clearerr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_clearerr.o: src/ndbm/dbm_clearerr.c
$(OBJDIR)/dbm_clearerr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_clearerr.c

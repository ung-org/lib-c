libc_X.400: libc.a(dbm_nextkey.o)
libc.a(dbm_nextkey.o): $(OBJDIR)/dbm_nextkey.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dbm_nextkey.o: src/ndbm/dbm_nextkey.c
$(OBJDIR)/dbm_nextkey.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ndbm/dbm_nextkey.c

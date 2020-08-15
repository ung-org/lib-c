libc_P.200809: libc.a(strfmon.o)
libc_X.4: libc.a(strfmon.o)
libc.a(strfmon.o): $(OBJDIR)/strfmon.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strfmon.o: src/monetary/strfmon.c
$(OBJDIR)/strfmon.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/monetary/strfmon.c

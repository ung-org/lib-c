libc_X.4: libc.a(loc2.o)
libc.a(loc2.o): $(OBJDIR)/loc2.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/loc2.o: src/regexp/loc2.c
$(OBJDIR)/loc2.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/loc2.c

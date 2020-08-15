libc_X.4: libc.a(loc1.o)
libc.a(loc1.o): $(OBJDIR)/loc1.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/loc1.o: src/regexp/loc1.c
$(OBJDIR)/loc1.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/loc1.c

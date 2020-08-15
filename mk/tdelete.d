libc_X.4: libc.a(tdelete.o)
libc.a(tdelete.o): $(OBJDIR)/tdelete.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tdelete.o: src/search/tdelete.c
$(OBJDIR)/tdelete.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/tdelete.c

libc_X.4: libc.a(locs.o)
libc.a(locs.o): $(OBJDIR)/locs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/locs.o: src/regexp/locs.c
$(OBJDIR)/locs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/locs.c

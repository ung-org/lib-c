libc_X.4: libc.a(twalk.o)
libc.a(twalk.o): $(OBJDIR)/twalk.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/twalk.o: src/search/twalk.c
$(OBJDIR)/twalk.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/twalk.c

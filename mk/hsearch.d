libc_X.4: libc.a(hsearch.o)
libc.a(hsearch.o): $(OBJDIR)/hsearch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hsearch.o: src/search/hsearch.c
$(OBJDIR)/hsearch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/hsearch.c

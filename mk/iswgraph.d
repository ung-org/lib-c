libc_C.199409: libc.a(iswgraph.o)
libc.a(iswgraph.o): $(OBJDIR)/iswgraph.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswgraph.o: src/wctype/iswgraph.c
$(OBJDIR)/iswgraph.o: src/_assert.h
$(OBJDIR)/iswgraph.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswgraph.c

libc_C.199409: libc.a(iswgraph.o)
libc.a(iswgraph.o): $(OBJDIR)/iswgraph.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswgraph.o: src/wctype/iswgraph.c
$(OBJDIR)/iswgraph.o: src/_safety.h
$(OBJDIR)/iswgraph.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswgraph.c

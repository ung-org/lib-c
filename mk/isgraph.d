libc_C.1: libc.a(isgraph.o)
libc.a(isgraph.o): $(OBJDIR)/isgraph.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isgraph.o: src/ctype/isgraph.c
$(OBJDIR)/isgraph.o: src/ctype/_ctype.h
$(OBJDIR)/isgraph.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/isgraph.c

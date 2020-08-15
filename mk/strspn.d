libc_C.1: libc.a(strspn.o)
libc.a(strspn.o): $(OBJDIR)/strspn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strspn.o: src/string/strspn.c
$(OBJDIR)/strspn.o: src/_assert.h
$(OBJDIR)/strspn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strspn.c

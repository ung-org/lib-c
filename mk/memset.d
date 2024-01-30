libc_C.1: libc.a(memset.o)
libc.a(memset.o): $(OBJDIR)/memset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memset.o: src/string/memset.c
$(OBJDIR)/memset.o: src/_safety.h
$(OBJDIR)/memset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memset.c

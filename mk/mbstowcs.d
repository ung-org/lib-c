libc_C.1: libc.a(mbstowcs.o)
libc.a(mbstowcs.o): $(OBJDIR)/mbstowcs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbstowcs.o: src/stdlib/mbstowcs.c
$(OBJDIR)/mbstowcs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/mbstowcs.c

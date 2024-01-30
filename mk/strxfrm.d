libc_C.1: libc.a(strxfrm.o)
libc.a(strxfrm.o): $(OBJDIR)/strxfrm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strxfrm.o: src/string/strxfrm.c
$(OBJDIR)/strxfrm.o: src/_safety.h
$(OBJDIR)/strxfrm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strxfrm.c

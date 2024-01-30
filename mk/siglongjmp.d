libc_P.1: libc.a(siglongjmp.o)
libc.a(siglongjmp.o): $(OBJDIR)/siglongjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/siglongjmp.o: src/setjmp/siglongjmp.c
$(OBJDIR)/siglongjmp.o: src/_safety.h
$(OBJDIR)/siglongjmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/siglongjmp.c

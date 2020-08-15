libc_C.1: libc.a(strpbrk.o)
libc.a(strpbrk.o): $(OBJDIR)/strpbrk.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strpbrk.o: src/string/strpbrk.c
$(OBJDIR)/strpbrk.o: src/_assert.h
$(OBJDIR)/strpbrk.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strpbrk.c

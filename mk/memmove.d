libc_C.1: libc.a(memmove.o)
libc.a(memmove.o): $(OBJDIR)/memmove.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memmove.o: src/string/memmove.c
$(OBJDIR)/memmove.o: src/_assert.h
$(OBJDIR)/memmove.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memmove.c

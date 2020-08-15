libc_C.1: libc.a(strncat.o)
libc.a(strncat.o): $(OBJDIR)/strncat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncat.o: src/string/strncat.c
$(OBJDIR)/strncat.o: src/_assert.h
$(OBJDIR)/strncat.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strncat.c

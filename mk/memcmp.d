libc_C.1: libc.a(memcmp.o)
libc.a(memcmp.o): $(OBJDIR)/memcmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memcmp.o: src/string/memcmp.c
$(OBJDIR)/memcmp.o: src/_safety.h
$(OBJDIR)/memcmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/memcmp.c

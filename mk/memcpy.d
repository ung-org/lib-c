libc_C.1: libc.a(memcpy.o)
libc.a(memcpy.o): $(OBJDIR)/memcpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memcpy.o: src/string/memcpy.c
$(OBJDIR)/memcpy.o: src/_safety.h
$(OBJDIR)/memcpy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/memcpy.c

libc_C_X1.201112: libc.a(memcpy_s.o)
libc.a(memcpy_s.o): $(OBJDIR)/memcpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memcpy_s.o: src/string/memcpy_s.c
$(OBJDIR)/memcpy_s.o: src/_safety.h
$(OBJDIR)/memcpy_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/memcpy_s.c

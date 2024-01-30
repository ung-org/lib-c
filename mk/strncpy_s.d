libc_C_X1.201112: libc.a(strncpy_s.o)
libc.a(strncpy_s.o): $(OBJDIR)/strncpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncpy_s.o: src/string/strncpy_s.c
$(OBJDIR)/strncpy_s.o: src/_safety.h
$(OBJDIR)/strncpy_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strncpy_s.c

libc_C_X1.201112: libc.a(strcpy_s.o)
libc.a(strcpy_s.o): $(OBJDIR)/strcpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcpy_s.o: src/string/strcpy_s.c
$(OBJDIR)/strcpy_s.o: src/_safety.h
$(OBJDIR)/strcpy_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strcpy_s.c

libc_C_X1.201112: libc.a(strnlen_s.o)
libc.a(strnlen_s.o): $(OBJDIR)/strnlen_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strnlen_s.o: src/string/strnlen_s.c
$(OBJDIR)/strnlen_s.o: src/_safety.h
$(OBJDIR)/strnlen_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strnlen_s.c

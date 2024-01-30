libc_C_X1.201112: libc.a(wctomb_s.o)
libc.a(wctomb_s.o): $(OBJDIR)/wctomb_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wctomb_s.o: src/stdlib/wctomb_s.c
$(OBJDIR)/wctomb_s.o: src/stdlib/_stdlib.h
$(OBJDIR)/wctomb_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/wctomb_s.c

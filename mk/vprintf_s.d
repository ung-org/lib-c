libc_C_X1.201112: libc.a(vprintf_s.o)
libc.a(vprintf_s.o): $(OBJDIR)/vprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vprintf_s.o: src/stdio/vprintf_s.c
$(OBJDIR)/vprintf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/vprintf_s.c

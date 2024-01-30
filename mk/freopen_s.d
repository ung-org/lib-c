libc_C_X1.201112: libc.a(freopen_s.o)
libc.a(freopen_s.o): $(OBJDIR)/freopen_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/freopen_s.o: src/stdio/freopen_s.c
$(OBJDIR)/freopen_s.o: src/stdio/_stdio.h
$(OBJDIR)/freopen_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/freopen_s.c

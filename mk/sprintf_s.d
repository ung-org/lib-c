libc_C_X1.201112: libc.a(sprintf_s.o)
libc.a(sprintf_s.o): $(OBJDIR)/sprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sprintf_s.o: src/stdio/sprintf_s.c
$(OBJDIR)/sprintf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/sprintf_s.c

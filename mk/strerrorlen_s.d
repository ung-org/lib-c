libc_C_X1.201112: libc.a(strerrorlen_s.o)
libc.a(strerrorlen_s.o): $(OBJDIR)/strerrorlen_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strerrorlen_s.o: src/string/strerrorlen_s.c
$(OBJDIR)/strerrorlen_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strerrorlen_s.c

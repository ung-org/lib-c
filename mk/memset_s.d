libc_C_X1.201112: libc.a(memset_s.o)
libc.a(memset_s.o): $(OBJDIR)/memset_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memset_s.o: src/string/memset_s.c
$(OBJDIR)/memset_s.o: src/_safety.h
$(OBJDIR)/memset_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memset_s.c

libc_C_X1.201112: libc.a(memmove_s.o)
libc.a(memmove_s.o): $(OBJDIR)/memmove_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memmove_s.o: src/string/memmove_s.c
$(OBJDIR)/memmove_s.o: src/_safety.h
$(OBJDIR)/memmove_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memmove_s.c

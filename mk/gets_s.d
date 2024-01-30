libc_C_X1.201112: libc.a(gets_s.o)
libc.a(gets_s.o): $(OBJDIR)/gets_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gets_s.o: src/stdio/gets_s.c
$(OBJDIR)/gets_s.o: src/stdio/_stdio.h
$(OBJDIR)/gets_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/gets_s.c

libc_C_X1.201112: libc.a(tmpnam_s.o)
libc.a(tmpnam_s.o): $(OBJDIR)/tmpnam_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tmpnam_s.o: src/stdio/tmpnam_s.c
$(OBJDIR)/tmpnam_s.o: src/stdio/_stdio.h
$(OBJDIR)/tmpnam_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/tmpnam_s.c

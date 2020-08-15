libc_C.1: libc.a(printf.o)
libc.a(printf.o): $(OBJDIR)/printf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/printf.o: src/stdio/printf.c
$(OBJDIR)/printf.o: src/stdio/_stdio.h
$(OBJDIR)/printf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/printf.c

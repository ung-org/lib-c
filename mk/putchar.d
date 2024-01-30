libc_C.1: libc.a(putchar.o)
libc.a(putchar.o): $(OBJDIR)/putchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putchar.o: src/stdio/putchar.c
$(OBJDIR)/putchar.o: src/stdio/_stdio.h
$(OBJDIR)/putchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/putchar.c

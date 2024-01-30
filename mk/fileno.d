libc_P.1: libc.a(fileno.o)
libc.a(fileno.o): $(OBJDIR)/fileno.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fileno.o: src/stdio/fileno.c
$(OBJDIR)/fileno.o: src/stdio/_stdio.h
$(OBJDIR)/fileno.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fileno.c

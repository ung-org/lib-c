libc_C.1: libc.a(sprintf.o)
libc.a(sprintf.o): $(OBJDIR)/sprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sprintf.o: src/stdio/sprintf.c
$(OBJDIR)/sprintf.o: src/stdio/_stdio.h
$(OBJDIR)/sprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/sprintf.c

libc_C.1: libc.a(vsprintf.o)
libc.a(vsprintf.o): $(OBJDIR)/vsprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsprintf.o: src/stdio/vsprintf.c
$(OBJDIR)/vsprintf.o: src/stdio/_stdio.h
$(OBJDIR)/vsprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/vsprintf.c

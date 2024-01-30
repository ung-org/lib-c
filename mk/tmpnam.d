libc_C.1: libc.a(tmpnam.o)
libc.a(tmpnam.o): $(OBJDIR)/tmpnam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tmpnam.o: src/stdio/tmpnam.c
$(OBJDIR)/tmpnam.o: src/stdio/_stdio.h
$(OBJDIR)/tmpnam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/tmpnam.c

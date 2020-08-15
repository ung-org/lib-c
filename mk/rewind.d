libc_C.1: libc.a(rewind.o)
libc.a(rewind.o): $(OBJDIR)/rewind.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rewind.o: src/stdio/rewind.c
$(OBJDIR)/rewind.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/rewind.c

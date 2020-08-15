libc_C.1: libc.a(fwrite.o)
libc.a(fwrite.o): $(OBJDIR)/fwrite.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwrite.o: src/stdio/fwrite.c
$(OBJDIR)/fwrite.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fwrite.c

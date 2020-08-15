libc_C.1: libc.a(ungetc.o)
libc.a(ungetc.o): $(OBJDIR)/ungetc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ungetc.o: src/stdio/ungetc.c
$(OBJDIR)/ungetc.o: src/stdio/_stdio.h
$(OBJDIR)/ungetc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/ungetc.c

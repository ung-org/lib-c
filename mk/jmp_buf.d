libc_C.1: libc.a(jmp_buf.o)
libc.a(jmp_buf.o): $(OBJDIR)/jmp_buf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/jmp_buf.o: src/setjmp/jmp_buf.c
$(OBJDIR)/jmp_buf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/jmp_buf.c

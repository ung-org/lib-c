libc_C.1: libc.a(fseek.o)
libc.a(fseek.o): $(OBJDIR)/fseek.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fseek.o: src/stdio/fseek.c
$(OBJDIR)/fseek.o: src/stdio/_stdio.h
$(OBJDIR)/fseek.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fseek.c

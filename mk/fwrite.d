libc_C.1: libc.a(fwrite.o)
libc.a(fwrite.o): $(OBJDIR)/fwrite.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwrite.o: src/stdio/fwrite.c
$(OBJDIR)/fwrite.o: src/stdio/_stdio.h
$(OBJDIR)/fwrite.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fwrite.c

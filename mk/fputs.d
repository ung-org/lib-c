libc_C.1: libc.a(fputs.o)
libc.a(fputs.o): $(OBJDIR)/fputs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fputs.o: src/stdio/fputs.c
$(OBJDIR)/fputs.o: src/stdio/_stdio.h
$(OBJDIR)/fputs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fputs.c

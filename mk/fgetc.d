libc_C.1: libc.a(fgetc.o)
libc.a(fgetc.o): $(OBJDIR)/fgetc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fgetc.o: src/stdio/fgetc.c
$(OBJDIR)/fgetc.o: src/stdio/_stdio.h
$(OBJDIR)/fgetc.o: src/stdio/getc_unlocked.c
$(OBJDIR)/fgetc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fgetc.c

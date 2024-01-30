libc_C.1: libc.a(fread.o)
libc.a(fread.o): $(OBJDIR)/fread.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fread.o: src/stdio/fread.c
$(OBJDIR)/fread.o: src/stdio/_stdio.h
$(OBJDIR)/fread.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fread.c

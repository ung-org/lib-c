libc_C.1: libc.a(fgets.o)
libc.a(fgets.o): $(OBJDIR)/fgets.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fgets.o: src/stdio/fgets.c
$(OBJDIR)/fgets.o: src/stdio/_stdio.h
$(OBJDIR)/fgets.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fgets.c

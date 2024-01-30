libc_C.1: libc.a(getchar.o)
libc.a(getchar.o): $(OBJDIR)/getchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getchar.o: src/stdio/getchar.c
$(OBJDIR)/getchar.o: src/stdio/_stdio.h
$(OBJDIR)/getchar.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/getchar.c

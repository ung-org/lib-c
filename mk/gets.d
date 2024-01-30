libc_C.1: libc.a(gets.o)
libc.a(gets.o): $(OBJDIR)/gets.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gets.o: src/stdio/gets.c
$(OBJDIR)/gets.o: src/stdio/_stdio.h
$(OBJDIR)/gets.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/gets.c

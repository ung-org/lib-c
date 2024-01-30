libc_C.1: libc.a(strcat.o)
libc.a(strcat.o): $(OBJDIR)/strcat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcat.o: src/string/strcat.c
$(OBJDIR)/strcat.o: src/_safety.h
$(OBJDIR)/strcat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strcat.c

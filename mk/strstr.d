libc_C.1: libc.a(strstr.o)
libc.a(strstr.o): $(OBJDIR)/strstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strstr.o: src/string/strstr.c
$(OBJDIR)/strstr.o: src/_safety.h
$(OBJDIR)/strstr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strstr.c

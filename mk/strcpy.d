libc_C.1: libc.a(strcpy.o)
libc.a(strcpy.o): $(OBJDIR)/strcpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcpy.o: src/string/strcpy.c
$(OBJDIR)/strcpy.o: src/_safety.h
$(OBJDIR)/strcpy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strcpy.c

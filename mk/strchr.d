libc_C.1: libc.a(strchr.o)
libc.a(strchr.o): $(OBJDIR)/strchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strchr.o: src/string/strchr.c
$(OBJDIR)/strchr.o: src/_safety.h
$(OBJDIR)/strchr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strchr.c

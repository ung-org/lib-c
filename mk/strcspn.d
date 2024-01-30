libc_C.1: libc.a(strcspn.o)
libc.a(strcspn.o): $(OBJDIR)/strcspn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcspn.o: src/string/strcspn.c
$(OBJDIR)/strcspn.o: src/_safety.h
$(OBJDIR)/strcspn.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strcspn.c

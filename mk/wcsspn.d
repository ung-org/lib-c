libc_C.199409: libc.a(wcsspn.o)
libc.a(wcsspn.o): $(OBJDIR)/wcsspn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsspn.o: src/wchar/wcsspn.c
$(OBJDIR)/wcsspn.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsspn.c

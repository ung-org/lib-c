libc_C.199901: libc.a(wcstold.o)
libc.a(wcstold.o): $(OBJDIR)/wcstold.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstold.o: src/wchar/wcstold.c
$(OBJDIR)/wcstold.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstold.c

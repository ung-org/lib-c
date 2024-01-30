libc_C.199409: libc.a(getwchar.o)
libc.a(getwchar.o): $(OBJDIR)/getwchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getwchar.o: src/wchar/getwchar.c
$(OBJDIR)/getwchar.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/getwchar.c

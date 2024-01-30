libc_C_X1.201112: libc.a(wcscpy_s.o)
libc.a(wcscpy_s.o): $(OBJDIR)/wcscpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscpy_s.o: src/wchar/wcscpy_s.c
$(OBJDIR)/wcscpy_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscpy_s.c

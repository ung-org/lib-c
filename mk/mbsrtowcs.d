libc_C.199409: libc.a(mbsrtowcs.o)
libc.a(mbsrtowcs.o): $(OBJDIR)/mbsrtowcs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbsrtowcs.o: src/wchar/mbsrtowcs.c
$(OBJDIR)/mbsrtowcs.o: src/wchar/_wchar.h
$(OBJDIR)/mbsrtowcs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/mbsrtowcs.c

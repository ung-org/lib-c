libc_C_X1.201112: libc.a(vsnwprintf_s.o)
libc.a(vsnwprintf_s.o): $(OBJDIR)/vsnwprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsnwprintf_s.o: src/wchar/vsnwprintf_s.c
$(OBJDIR)/vsnwprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/vsnwprintf_s.c

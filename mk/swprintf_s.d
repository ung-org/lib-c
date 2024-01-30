libc_C_X1.201112: libc.a(swprintf_s.o)
libc.a(swprintf_s.o): $(OBJDIR)/swprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swprintf_s.o: src/wchar/swprintf_s.c
$(OBJDIR)/swprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/swprintf_s.c

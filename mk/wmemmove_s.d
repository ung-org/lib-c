libc_C_X1.201112: libc.a(wmemmove_s.o)
libc.a(wmemmove_s.o): $(OBJDIR)/wmemmove_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemmove_s.o: src/wchar/wmemmove_s.c
$(OBJDIR)/wmemmove_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemmove_s.c

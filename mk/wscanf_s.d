libc_C_X1.201112: libc.a(wscanf_s.o)
libc.a(wscanf_s.o): $(OBJDIR)/wscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wscanf_s.o: src/wchar/wscanf_s.c
$(OBJDIR)/wscanf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wscanf_s.c

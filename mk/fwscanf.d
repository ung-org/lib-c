libc_C.199409: libc.a(fwscanf.o)
libc.a(fwscanf.o): $(OBJDIR)/fwscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwscanf.o: src/wchar/fwscanf.c
$(OBJDIR)/fwscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/fwscanf.c

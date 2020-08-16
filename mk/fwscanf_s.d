libc_C_X1.201112: libc.a(fwscanf_s.o)
libc.a(fwscanf_s.o): $(OBJDIR)/fwscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwscanf_s.o: src/wchar/fwscanf_s.c
$(OBJDIR)/fwscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/fwscanf_s.c

libc_C_X1.201112: libc.a(vwscanf_s.o)
libc.a(vwscanf_s.o): $(OBJDIR)/vwscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vwscanf_s.o: src/wchar/vwscanf_s.c
$(OBJDIR)/vwscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vwscanf_s.c

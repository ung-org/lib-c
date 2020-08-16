libc_C_X1.201112: libc.a(vswscanf_s.o)
libc.a(vswscanf_s.o): $(OBJDIR)/vswscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vswscanf_s.o: src/wchar/vswscanf_s.c
$(OBJDIR)/vswscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vswscanf_s.c

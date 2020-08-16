libc_C_X1.201112: libc.a(swscanf_s.o)
libc.a(swscanf_s.o): $(OBJDIR)/swscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swscanf_s.o: src/wchar/swscanf_s.c
$(OBJDIR)/swscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/swscanf_s.c

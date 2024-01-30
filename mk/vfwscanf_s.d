libc_C_X1.201112: libc.a(vfwscanf_s.o)
libc.a(vfwscanf_s.o): $(OBJDIR)/vfwscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfwscanf_s.o: src/wchar/vfwscanf_s.c
$(OBJDIR)/vfwscanf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/vfwscanf_s.c

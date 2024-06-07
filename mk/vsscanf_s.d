libc_C_X1.201112: libc.a(vsscanf_s.o)
libc.a(vsscanf_s.o): $(OBJDIR)/vsscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsscanf_s.o: src/stdio/vsscanf_s.c
$(OBJDIR)/vsscanf_s.o: src/stdio/_format.h
$(OBJDIR)/vsscanf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vsscanf_s.c

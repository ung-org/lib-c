libc_C_X1.201112: libc.a(sscanf_s.o)
libc.a(sscanf_s.o): $(OBJDIR)/sscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sscanf_s.o: src/stdio/sscanf_s.c
$(OBJDIR)/sscanf_s.o: src/stdio/_format.h
$(OBJDIR)/sscanf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/sscanf_s.c

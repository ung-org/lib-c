libc_C_X1.201112: libc.a(vfscanf_s.o)
libc.a(vfscanf_s.o): $(OBJDIR)/vfscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfscanf_s.o: src/stdio/vfscanf_s.c
$(OBJDIR)/vfscanf_s.o: src/stdio/_stdio.h
$(OBJDIR)/vfscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/vfscanf_s.c

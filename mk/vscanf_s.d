libc_C_X1.201112: libc.a(vscanf_s.o)
libc.a(vscanf_s.o): $(OBJDIR)/vscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vscanf_s.o: src/stdio/vscanf_s.c
$(OBJDIR)/vscanf_s.o: src/stdio/_stdio.h
$(OBJDIR)/vscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/vscanf_s.c

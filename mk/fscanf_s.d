libc_C_X1.201112: libc.a(fscanf_s.o)
libc.a(fscanf_s.o): $(OBJDIR)/fscanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fscanf_s.o: src/stdio/fscanf_s.c
$(OBJDIR)/fscanf_s.o: src/stdio/_stdio.h
$(OBJDIR)/fscanf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fscanf_s.c

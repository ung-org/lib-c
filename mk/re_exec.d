libc_X.400: libc.a(re_exec.o)
libc.a(re_exec.o): $(OBJDIR)/re_exec.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/re_exec.o: src/re_comp/re_exec.c
$(OBJDIR)/re_exec.o: 
$(OBJDIR)/re_exec.o: 
$(OBJDIR)/re_exec.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/re_comp/re_exec.c

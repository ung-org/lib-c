libc_X.400: libc.a(re_comp.o)
libc.a(re_comp.o): $(OBJDIR)/re_comp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/re_comp.o: src/re_comp/re_comp.c
$(OBJDIR)/re_comp.o: 
$(OBJDIR)/re_comp.o: 
$(OBJDIR)/re_comp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/re_comp/re_comp.c

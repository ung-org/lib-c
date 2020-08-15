libc_X.400: libc.a(struct_str_mlist.o)
libc.a(struct_str_mlist.o): $(OBJDIR)/struct_str_mlist.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_str_mlist.o: src/stropts/struct_str_mlist.c
$(OBJDIR)/struct_str_mlist.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/struct_str_mlist.c

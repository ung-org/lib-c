libc_X.400: libc.a(struct_str_list.o)
libc.a(struct_str_list.o): $(OBJDIR)/struct_str_list.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_str_list.o: src/stropts/struct_str_list.c
$(OBJDIR)/struct_str_list.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/struct_str_list.c

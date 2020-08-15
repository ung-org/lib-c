libc_X.4: libc.a(struct_ipc_perm.o)
libc.a(struct_ipc_perm.o): $(OBJDIR)/struct_ipc_perm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_ipc_perm.o: src/sys/ipc/struct_ipc_perm.c
$(OBJDIR)/struct_ipc_perm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/ipc/struct_ipc_perm.c

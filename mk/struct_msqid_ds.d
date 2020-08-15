libc_X.4: libc.a(struct_msqid_ds.o)
libc.a(struct_msqid_ds.o): $(OBJDIR)/struct_msqid_ds.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_msqid_ds.o: src/sys/msg/struct_msqid_ds.c
$(OBJDIR)/struct_msqid_ds.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/msg/struct_msqid_ds.c

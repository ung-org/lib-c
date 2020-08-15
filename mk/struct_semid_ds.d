libc_X.4: libc.a(struct_semid_ds.o)
libc.a(struct_semid_ds.o): $(OBJDIR)/struct_semid_ds.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_semid_ds.o: src/sys/sem/struct_semid_ds.c
$(OBJDIR)/struct_semid_ds.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/sem/struct_semid_ds.c

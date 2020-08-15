libc_X.4: libc.a(struct_sem_anonymous.o)
libc.a(struct_sem_anonymous.o): $(OBJDIR)/struct_sem_anonymous.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_sem_anonymous.o: src/sys/sem/struct_sem_anonymous.c
$(OBJDIR)/struct_sem_anonymous.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/sem/struct_sem_anonymous.c

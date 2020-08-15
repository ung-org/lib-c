libc_X.4: libc.a(semctl.o)
libc.a(semctl.o): $(OBJDIR)/semctl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/semctl.o: src/sys/sem/semctl.c
$(OBJDIR)/semctl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/sem/semctl.c

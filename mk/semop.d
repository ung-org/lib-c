libc_X.4: libc.a(semop.o)
libc.a(semop.o): $(OBJDIR)/semop.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/semop.o: src/sys/sem/semop.c
$(OBJDIR)/semop.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/sem/semop.c

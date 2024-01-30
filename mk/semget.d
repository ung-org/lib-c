libc_X.4: libc.a(semget.o)
libc.a(semget.o): $(OBJDIR)/semget.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/semget.o: src/sys/sem/semget.c
$(OBJDIR)/semget.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/sem/semget.c

libc_X.4: libc.a(shmat.o)
libc.a(shmat.o): $(OBJDIR)/shmat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shmat.o: src/sys/shm/shmat.c
$(OBJDIR)/shmat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/shm/shmat.c

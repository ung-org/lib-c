libc_X.400: libc.a(usleep.o)
libc.a(usleep.o): $(OBJDIR)/usleep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/usleep.o: src/unistd/usleep.c
$(OBJDIR)/usleep.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/usleep.c

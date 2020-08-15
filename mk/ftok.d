libc_X.400: libc.a(ftok.o)
libc.a(ftok.o): $(OBJDIR)/ftok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ftok.o: src/sys/ipc/ftok.c
$(OBJDIR)/ftok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/ipc/ftok.c

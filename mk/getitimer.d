libc_X.400: libc.a(getitimer.o)
libc.a(getitimer.o): $(OBJDIR)/getitimer.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getitimer.o: src/sys/time/getitimer.c
$(OBJDIR)/getitimer.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/time/getitimer.c

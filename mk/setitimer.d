libc_X.400: libc.a(setitimer.o)
libc.a(setitimer.o): $(OBJDIR)/setitimer.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setitimer.o: src/sys/time/setitimer.c
$(OBJDIR)/setitimer.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/time/setitimer.c

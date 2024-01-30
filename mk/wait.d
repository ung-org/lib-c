libc_P.1: libc.a(wait.o)
libc.a(wait.o): $(OBJDIR)/wait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wait.o: src/sys/wait/wait.c
$(OBJDIR)/wait.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/wait/wait.c

libc_C.0: libc.a(__sigsegv.o)
libc.a(__sigsegv.o): $(OBJDIR)/__sigsegv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__sigsegv.o: src/signal/__sigsegv.c
$(OBJDIR)/__sigsegv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/__sigsegv.c

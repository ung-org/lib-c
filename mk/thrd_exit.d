libc_C.201112: libc.a(thrd_exit.o)
libc.a(thrd_exit.o): $(OBJDIR)/thrd_exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_exit.o: src/threads/thrd_exit.c
$(OBJDIR)/thrd_exit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_exit.c

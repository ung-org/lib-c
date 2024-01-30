libc_C.201112: libc.a(thrd_sleep.o)
libc.a(thrd_sleep.o): $(OBJDIR)/thrd_sleep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_sleep.o: src/threads/thrd_sleep.c
$(OBJDIR)/thrd_sleep.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_sleep.c

libc_C.201112: libc.a(thrd_yield.o)
libc.a(thrd_yield.o): $(OBJDIR)/thrd_yield.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_yield.o: src/threads/thrd_yield.c
$(OBJDIR)/thrd_yield.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_yield.c

libc_C.201112: libc.a(mtx_timedlock.o)
libc.a(mtx_timedlock.o): $(OBJDIR)/mtx_timedlock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_timedlock.o: src/threads/mtx_timedlock.c
$(OBJDIR)/mtx_timedlock.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_timedlock.c

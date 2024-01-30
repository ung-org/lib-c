libc_C.201112: libc.a(mtx_lock.o)
libc.a(mtx_lock.o): $(OBJDIR)/mtx_lock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_lock.o: src/threads/mtx_lock.c
$(OBJDIR)/mtx_lock.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_lock.c

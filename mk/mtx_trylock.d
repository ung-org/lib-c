libc_C.201112: libc.a(mtx_trylock.o)
libc.a(mtx_trylock.o): $(OBJDIR)/mtx_trylock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_trylock.o: src/threads/mtx_trylock.c
$(OBJDIR)/mtx_trylock.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_trylock.c

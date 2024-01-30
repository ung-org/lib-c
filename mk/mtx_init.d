libc_C.201112: libc.a(mtx_init.o)
libc.a(mtx_init.o): $(OBJDIR)/mtx_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_init.o: src/threads/mtx_init.c
$(OBJDIR)/mtx_init.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_init.c

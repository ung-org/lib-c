libc_C.201112: libc.a(mtx_destroy.o)
libc.a(mtx_destroy.o): $(OBJDIR)/mtx_destroy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_destroy.o: src/threads/mtx_destroy.c
$(OBJDIR)/mtx_destroy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_destroy.c

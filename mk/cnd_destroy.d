libc_C.201112: libc.a(cnd_destroy.o)
libc.a(cnd_destroy.o): $(OBJDIR)/cnd_destroy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_destroy.o: src/threads/cnd_destroy.c
$(OBJDIR)/cnd_destroy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_destroy.c

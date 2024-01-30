libc_C.201112: libc.a(cnd_wait.o)
libc.a(cnd_wait.o): $(OBJDIR)/cnd_wait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_wait.o: src/threads/cnd_wait.c
$(OBJDIR)/cnd_wait.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_wait.c

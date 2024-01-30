libc_C.201112: libc.a(cnd_broadcast.o)
libc.a(cnd_broadcast.o): $(OBJDIR)/cnd_broadcast.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_broadcast.o: src/threads/cnd_broadcast.c
$(OBJDIR)/cnd_broadcast.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_broadcast.c

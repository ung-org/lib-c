libc_C.201112: libc.a(cnd_timedwait.o)
libc.a(cnd_timedwait.o): $(OBJDIR)/cnd_timedwait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_timedwait.o: src/threads/cnd_timedwait.c
$(OBJDIR)/cnd_timedwait.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_timedwait.c

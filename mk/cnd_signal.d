libc_C.201112: libc.a(cnd_signal.o)
libc.a(cnd_signal.o): $(OBJDIR)/cnd_signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_signal.o: src/threads/cnd_signal.c
$(OBJDIR)/cnd_signal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_signal.c

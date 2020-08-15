libc_C.201112: libc.a(cnd_init.o)
libc.a(cnd_init.o): $(OBJDIR)/cnd_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cnd_init.o: src/threads/cnd_init.c
$(OBJDIR)/cnd_init.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/cnd_init.c

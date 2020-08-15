libc_C.201112: libc.a(mtx_unlock.o)
libc.a(mtx_unlock.o): $(OBJDIR)/mtx_unlock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mtx_unlock.o: src/threads/mtx_unlock.c
$(OBJDIR)/mtx_unlock.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/mtx_unlock.c

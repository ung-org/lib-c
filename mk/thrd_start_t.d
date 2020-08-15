libc_C.201112: libc.a(thrd_start_t.o)
libc.a(thrd_start_t.o): $(OBJDIR)/thrd_start_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_start_t.o: src/threads/thrd_start_t.c
$(OBJDIR)/thrd_start_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_start_t.c

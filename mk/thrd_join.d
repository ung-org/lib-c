libc_C.201112: libc.a(thrd_join.o)
libc.a(thrd_join.o): $(OBJDIR)/thrd_join.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_join.o: src/threads/thrd_join.c
$(OBJDIR)/thrd_join.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_join.c

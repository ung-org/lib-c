libc_C.201112: libc.a(thrd_detach.o)
libc.a(thrd_detach.o): $(OBJDIR)/thrd_detach.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_detach.o: src/threads/thrd_detach.c
$(OBJDIR)/thrd_detach.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_detach.c

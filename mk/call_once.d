libc_C.201112: libc.a(call_once.o)
libc.a(call_once.o): $(OBJDIR)/call_once.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/call_once.o: src/threads/call_once.c
$(OBJDIR)/call_once.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/threads/call_once.c

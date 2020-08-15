libc_P.199309: libc.a(sigtimedwait.o)
libc.a(sigtimedwait.o): $(OBJDIR)/sigtimedwait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigtimedwait.o: src/signal/sigtimedwait.c
$(OBJDIR)/sigtimedwait.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigtimedwait.c

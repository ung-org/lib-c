libc_X.400: libc.a(killpg.o)
libc.a(killpg.o): $(OBJDIR)/killpg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/killpg.o: src/signal/killpg.c
$(OBJDIR)/killpg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/killpg.c

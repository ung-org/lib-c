libc_X.4: libc.a(timezone.o)
libc.a(timezone.o): $(OBJDIR)/timezone.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timezone.o: src/time/timezone.c
$(OBJDIR)/timezone.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timezone.c

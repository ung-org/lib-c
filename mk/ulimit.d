libc_X.4: libc.a(ulimit.o)
libc.a(ulimit.o): $(OBJDIR)/ulimit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ulimit.o: src/ulimit/ulimit.c
$(OBJDIR)/ulimit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ulimit/ulimit.c

libc_P.200809: libc.a(getsid.o)
libc_X.400: libc.a(getsid.o)
libc.a(getsid.o): $(OBJDIR)/getsid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getsid.o: src/unistd/getsid.c
$(OBJDIR)/getsid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getsid.c

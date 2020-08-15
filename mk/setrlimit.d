libc_X.400: libc.a(setrlimit.o)
libc.a(setrlimit.o): $(OBJDIR)/setrlimit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setrlimit.o: src/sys/resource/setrlimit.c
$(OBJDIR)/setrlimit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/resource/setrlimit.c

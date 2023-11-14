libc_C.0: libc.a(inet_addr.o)
libc.a(inet_addr.o): $(OBJDIR)/inet_addr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inet_addr.o: src/arpa/inet/inet_addr.c
$(OBJDIR)/inet_addr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/inet_addr.c

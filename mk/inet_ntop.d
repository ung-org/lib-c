libc_C.0: libc.a(inet_ntop.o)
libc.a(inet_ntop.o): $(OBJDIR)/inet_ntop.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inet_ntop.o: src/arpa/inet/inet_ntop.c
$(OBJDIR)/inet_ntop.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/inet_ntop.c

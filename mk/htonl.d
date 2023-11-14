libc_C.0: libc.a(htonl.o)
libc.a(htonl.o): $(OBJDIR)/htonl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/htonl.o: src/arpa/inet/htonl.c
$(OBJDIR)/htonl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/htonl.c

libc_C.0: libc.a(inet_ntoa.o)
libc.a(inet_ntoa.o): $(OBJDIR)/inet_ntoa.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inet_ntoa.o: src/arpa/inet/inet_ntoa.c
$(OBJDIR)/inet_ntoa.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/inet_ntoa.c

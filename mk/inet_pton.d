libc_C.0: libc.a(inet_pton.o)
libc.a(inet_pton.o): $(OBJDIR)/inet_pton.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inet_pton.o: src/arpa/inet/inet_pton.c
$(OBJDIR)/inet_pton.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/inet_pton.c

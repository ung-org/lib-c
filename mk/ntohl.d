libc_C.0: libc.a(ntohl.o)
libc.a(ntohl.o): $(OBJDIR)/ntohl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ntohl.o: src/arpa/inet/ntohl.c
$(OBJDIR)/ntohl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/ntohl.c

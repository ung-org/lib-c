libc_C.0: libc.a(ntohs.o)
libc.a(ntohs.o): $(OBJDIR)/ntohs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ntohs.o: src/arpa/inet/ntohs.c
$(OBJDIR)/ntohs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/ntohs.c

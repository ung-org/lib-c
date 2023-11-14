libc_C.0: libc.a(htons.o)
libc.a(htons.o): $(OBJDIR)/htons.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/htons.o: src/arpa/inet/htons.c
$(OBJDIR)/htons.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/arpa/inet/htons.c

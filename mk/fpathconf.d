libc_P.1: libc.a(fpathconf.o)
libc.a(fpathconf.o): $(OBJDIR)/fpathconf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fpathconf.o: src/unistd/fpathconf.c
$(OBJDIR)/fpathconf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/fpathconf.c

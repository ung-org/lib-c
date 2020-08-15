libc_P.199506: libc.a(flockfile.o)
libc.a(flockfile.o): $(OBJDIR)/flockfile.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/flockfile.o: src/stdio/flockfile.c
$(OBJDIR)/flockfile.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/flockfile.c

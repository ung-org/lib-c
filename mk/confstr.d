libc_P.2: libc.a(confstr.o)
libc.a(confstr.o): $(OBJDIR)/confstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/confstr.o: src/unistd/confstr.c
$(OBJDIR)/confstr.o: src/_assert.h
$(OBJDIR)/confstr.o: src/unistd/_confstr.h
$(OBJDIR)/confstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/confstr.c

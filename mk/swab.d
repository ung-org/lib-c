libc_X.4: libc.a(swab.o)
libc.a(swab.o): $(OBJDIR)/swab.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swab.o: src/unistd/swab.c
$(OBJDIR)/swab.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/swab.c

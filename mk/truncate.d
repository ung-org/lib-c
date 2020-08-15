libc_P.200809: libc.a(truncate.o)
libc_X.400: libc.a(truncate.o)
libc.a(truncate.o): $(OBJDIR)/truncate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/truncate.o: src/unistd/truncate.c
$(OBJDIR)/truncate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/truncate.c

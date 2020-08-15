libc_X.4: libc.a(putenv.o)
libc.a(putenv.o): $(OBJDIR)/putenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putenv.o: src/stdlib/putenv.c
$(OBJDIR)/putenv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/putenv.c

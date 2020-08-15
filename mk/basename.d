libc_X.400: libc.a(basename.o)
libc.a(basename.o): $(OBJDIR)/basename.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/basename.o: src/libgen/basename.c
$(OBJDIR)/basename.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/libgen/basename.c

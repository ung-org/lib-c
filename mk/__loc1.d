libc_X.400: libc.a(__loc1.o)
libc.a(__loc1.o): $(OBJDIR)/__loc1.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__loc1.o: src/libgen/__loc1.c
$(OBJDIR)/__loc1.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/libgen/__loc1.c

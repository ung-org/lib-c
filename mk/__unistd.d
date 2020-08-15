libc_P.1: libc.a(__unistd.o)
libc.a(__unistd.o): $(OBJDIR)/__unistd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__unistd.o: src/unistd/__unistd.c
$(OBJDIR)/__unistd.o: src/unistd/_unistd.h
$(OBJDIR)/__unistd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/__unistd.c

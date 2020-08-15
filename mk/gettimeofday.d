libc_X.400: libc.a(gettimeofday.o)
libc.a(gettimeofday.o): $(OBJDIR)/gettimeofday.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gettimeofday.o: src/sys/time/gettimeofday.c
$(OBJDIR)/gettimeofday.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/time/gettimeofday.c

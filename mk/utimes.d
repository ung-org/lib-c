libc_X.400: libc.a(utimes.o)
libc.a(utimes.o): $(OBJDIR)/utimes.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/utimes.o: src/sys/time/utimes.c
$(OBJDIR)/utimes.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/time/utimes.c

libc_P.199309: libc.a(nanosleep.o)
libc.a(nanosleep.o): $(OBJDIR)/nanosleep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nanosleep.o: src/time/nanosleep.c
$(OBJDIR)/nanosleep.o: src/_syscall.h
$(OBJDIR)/nanosleep.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/nanosleep.c

libc_P.1: libc.a(utime.o)
libc.a(utime.o): $(OBJDIR)/utime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/utime.o: src/utime/utime.c
$(OBJDIR)/utime.o: src/_syscall.h
$(OBJDIR)/utime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utime/utime.c

libc_C.1: libc.a(time.o)
libc.a(time.o): $(OBJDIR)/time.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/time.o: src/time/time.c
$(OBJDIR)/time.o: src/_syscall.h
$(OBJDIR)/time.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/time.c

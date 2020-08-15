libc_P.1: libc.a(close.o)
libc.a(close.o): $(OBJDIR)/close.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/close.o: src/unistd/close.c
$(OBJDIR)/close.o: src/_syscall.h
$(OBJDIR)/close.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/close.c

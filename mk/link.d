libc_P.1: libc.a(link.o)
libc.a(link.o): $(OBJDIR)/link.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/link.o: src/unistd/link.c
$(OBJDIR)/link.o: src/_syscall.h
$(OBJDIR)/link.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/link.c

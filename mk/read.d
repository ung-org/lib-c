libc_P.1: libc.a(read.o)
libc.a(read.o): $(OBJDIR)/read.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/read.o: src/unistd/read.c
$(OBJDIR)/read.o: src/_syscall.h
$(OBJDIR)/read.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/read.c

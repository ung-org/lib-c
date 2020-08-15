libc_P.1: libc.a(getcwd.o)
libc.a(getcwd.o): $(OBJDIR)/getcwd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getcwd.o: src/unistd/getcwd.c
$(OBJDIR)/getcwd.o: src/_assert.h
$(OBJDIR)/getcwd.o: src/_syscall.h
$(OBJDIR)/getcwd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getcwd.c

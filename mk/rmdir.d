libc_P.1: libc.a(rmdir.o)
libc.a(rmdir.o): $(OBJDIR)/rmdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rmdir.o: src/unistd/rmdir.c
$(OBJDIR)/rmdir.o: src/_syscall.h
$(OBJDIR)/rmdir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/rmdir.c

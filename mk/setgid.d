libc_P.1: libc.a(setgid.o)
libc.a(setgid.o): $(OBJDIR)/setgid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setgid.o: src/unistd/setgid.c
$(OBJDIR)/setgid.o: src/_syscall.h
$(OBJDIR)/setgid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/setgid.c

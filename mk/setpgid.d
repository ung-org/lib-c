libc_P.1: libc.a(setpgid.o)
libc.a(setpgid.o): $(OBJDIR)/setpgid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setpgid.o: src/unistd/setpgid.c
$(OBJDIR)/setpgid.o: src/_syscall.h
$(OBJDIR)/setpgid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/setpgid.c

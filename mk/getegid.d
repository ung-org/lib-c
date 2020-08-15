libc_P.1: libc.a(getegid.o)
libc.a(getegid.o): $(OBJDIR)/getegid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getegid.o: src/unistd/getegid.c
$(OBJDIR)/getegid.o: src/_syscall.h
$(OBJDIR)/getegid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getegid.c

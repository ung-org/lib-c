libc_P.1: libc.a(chown.o)
libc.a(chown.o): $(OBJDIR)/chown.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/chown.o: src/unistd/chown.c
$(OBJDIR)/chown.o: src/_syscall.h
$(OBJDIR)/chown.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/chown.c

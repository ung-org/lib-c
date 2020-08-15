libc_X.400: libc.a(chroot.o)
libc.a(chroot.o): $(OBJDIR)/chroot.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/chroot.o: src/unistd/chroot.c
$(OBJDIR)/chroot.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/chroot.c

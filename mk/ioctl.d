libc_X.400: libc.a(ioctl.o)
libc.a(ioctl.o): $(OBJDIR)/ioctl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ioctl.o: src/stropts/ioctl.c
$(OBJDIR)/ioctl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/ioctl.c

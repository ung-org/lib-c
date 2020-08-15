libc_P.1: libc.a(cfsetispeed.o)
libc.a(cfsetispeed.o): $(OBJDIR)/cfsetispeed.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cfsetispeed.o: src/termios/cfsetispeed.c
$(OBJDIR)/cfsetispeed.o: src/_assert.h
$(OBJDIR)/cfsetispeed.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/cfsetispeed.c

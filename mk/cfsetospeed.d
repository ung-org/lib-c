libc_P.1: libc.a(cfsetospeed.o)
libc.a(cfsetospeed.o): $(OBJDIR)/cfsetospeed.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cfsetospeed.o: src/termios/cfsetospeed.c
$(OBJDIR)/cfsetospeed.o: src/_assert.h
$(OBJDIR)/cfsetospeed.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/cfsetospeed.c

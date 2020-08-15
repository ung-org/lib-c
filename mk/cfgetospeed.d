libc_P.1: libc.a(cfgetospeed.o)
libc.a(cfgetospeed.o): $(OBJDIR)/cfgetospeed.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cfgetospeed.o: src/termios/cfgetospeed.c
$(OBJDIR)/cfgetospeed.o: src/_assert.h
$(OBJDIR)/cfgetospeed.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/cfgetospeed.c

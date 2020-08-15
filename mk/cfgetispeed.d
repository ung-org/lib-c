libc_P.1: libc.a(cfgetispeed.o)
libc.a(cfgetispeed.o): $(OBJDIR)/cfgetispeed.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cfgetispeed.o: src/termios/cfgetispeed.c
$(OBJDIR)/cfgetispeed.o: src/_assert.h
$(OBJDIR)/cfgetispeed.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/cfgetispeed.c

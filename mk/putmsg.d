libc_X.400: libc.a(putmsg.o)
libc.a(putmsg.o): $(OBJDIR)/putmsg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putmsg.o: src/stropts/putmsg.c
$(OBJDIR)/putmsg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/putmsg.c

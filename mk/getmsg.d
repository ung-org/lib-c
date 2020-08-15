libc_X.400: libc.a(getmsg.o)
libc.a(getmsg.o): $(OBJDIR)/getmsg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getmsg.o: src/stropts/getmsg.c
$(OBJDIR)/getmsg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/getmsg.c

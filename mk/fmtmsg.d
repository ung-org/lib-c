libc_X.400: libc.a(fmtmsg.o)
libc.a(fmtmsg.o): $(OBJDIR)/fmtmsg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fmtmsg.o: src/fmtmsg/fmtmsg.c
$(OBJDIR)/fmtmsg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fmtmsg/fmtmsg.c

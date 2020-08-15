libc_X.400: libc.a(getpmsg.o)
libc.a(getpmsg.o): $(OBJDIR)/getpmsg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpmsg.o: src/stropts/getpmsg.c
$(OBJDIR)/getpmsg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/getpmsg.c

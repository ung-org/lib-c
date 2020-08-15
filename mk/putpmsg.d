libc_X.400: libc.a(putpmsg.o)
libc.a(putpmsg.o): $(OBJDIR)/putpmsg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putpmsg.o: src/stropts/putpmsg.c
$(OBJDIR)/putpmsg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/putpmsg.c

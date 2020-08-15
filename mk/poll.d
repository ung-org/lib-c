libc_P.200809: libc.a(poll.o)
libc_X.400: libc.a(poll.o)
libc.a(poll.o): $(OBJDIR)/poll.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/poll.o: src/poll/poll.c
$(OBJDIR)/poll.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/poll/poll.c

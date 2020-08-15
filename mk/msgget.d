libc_X.4: libc.a(msgget.o)
libc.a(msgget.o): $(OBJDIR)/msgget.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/msgget.o: src/sys/msg/msgget.c
$(OBJDIR)/msgget.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/msg/msgget.c

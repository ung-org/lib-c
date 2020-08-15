libc_X.4: libc.a(msgctl.o)
libc.a(msgctl.o): $(OBJDIR)/msgctl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/msgctl.o: src/sys/msg/msgctl.c
$(OBJDIR)/msgctl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/msg/msgctl.c

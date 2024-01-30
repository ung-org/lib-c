libc_X.4: libc.a(msgrcv.o)
libc.a(msgrcv.o): $(OBJDIR)/msgrcv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/msgrcv.o: src/sys/msg/msgrcv.c
$(OBJDIR)/msgrcv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/msg/msgrcv.c

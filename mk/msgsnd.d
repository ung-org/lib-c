libc_X.4: libc.a(msgsnd.o)
libc.a(msgsnd.o): $(OBJDIR)/msgsnd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/msgsnd.o: src/sys/msg/msgsnd.c
$(OBJDIR)/msgsnd.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/msg/msgsnd.c

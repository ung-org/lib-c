libc_P.1: libc.a(alarm.o)
libc.a(alarm.o): $(OBJDIR)/alarm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/alarm.o: src/unistd/alarm.c
$(OBJDIR)/alarm.o: src/_syscall.h
$(OBJDIR)/alarm.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/alarm.c

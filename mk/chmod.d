libc_P.1: libc.a(chmod.o)
libc.a(chmod.o): $(OBJDIR)/chmod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/chmod.o: src/sys/stat/chmod.c
$(OBJDIR)/chmod.o: src/_syscall.h
$(OBJDIR)/chmod.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/stat/chmod.c

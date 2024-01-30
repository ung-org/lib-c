libc_P.1: libc.a(getgroups.o)
libc.a(getgroups.o): $(OBJDIR)/getgroups.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getgroups.o: src/unistd/getgroups.c
$(OBJDIR)/getgroups.o: src/_syscall.h
$(OBJDIR)/getgroups.o: src/_assert.h
$(OBJDIR)/getgroups.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getgroups.c

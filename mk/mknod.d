libc_X.400: libc.a(mknod.o)
libc.a(mknod.o): $(OBJDIR)/mknod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mknod.o: src/sys/stat/mknod.c
$(OBJDIR)/mknod.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/stat/mknod.c

libc_P.200112: libc.a(lstat.o)
libc_X.400: libc.a(lstat.o)
libc.a(lstat.o): $(OBJDIR)/lstat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lstat.o: src/sys/stat/lstat.c
$(OBJDIR)/lstat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/stat/lstat.c

libc_P.200809: libc.a(fstatvfs.o)
libc_X.400: libc.a(fstatvfs.o)
libc.a(fstatvfs.o): $(OBJDIR)/fstatvfs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fstatvfs.o: src/sys/statvfs/fstatvfs.c
$(OBJDIR)/fstatvfs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/statvfs/fstatvfs.c

libc_P.200809: libc.a(statvfs.o)
libc_X.400: libc.a(statvfs.o)
libc.a(statvfs.o): $(OBJDIR)/statvfs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/statvfs.o: src/sys/statvfs/statvfs.c
$(OBJDIR)/statvfs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/statvfs/statvfs.c

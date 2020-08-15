libc_P.199309: libc.a(fdatasync.o)
libc.a(fdatasync.o): $(OBJDIR)/fdatasync.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fdatasync.o: src/unistd/fdatasync.c
$(OBJDIR)/fdatasync.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/fdatasync.c

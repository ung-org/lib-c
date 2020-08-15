libc_P.199309: libc.a(fsync.o)
libc_X.4: libc.a(fsync.o)
libc.a(fsync.o): $(OBJDIR)/fsync.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fsync.o: src/unistd/fsync.c
$(OBJDIR)/fsync.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/fsync.c

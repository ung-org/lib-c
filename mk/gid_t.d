libc_P.1: libc.a(gid_t.o)
libc.a(gid_t.o): $(OBJDIR)/gid_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gid_t.o: src/sys/types/gid_t.c
$(OBJDIR)/gid_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/gid_t.c

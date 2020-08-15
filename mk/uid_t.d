libc_P.1: libc.a(uid_t.o)
libc.a(uid_t.o): $(OBJDIR)/uid_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/uid_t.o: src/sys/types/uid_t.c
$(OBJDIR)/uid_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/uid_t.c

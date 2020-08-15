libc_P.1: libc.a(nlink_t.o)
libc.a(nlink_t.o): $(OBJDIR)/nlink_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nlink_t.o: src/sys/types/nlink_t.c
$(OBJDIR)/nlink_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/nlink_t.c

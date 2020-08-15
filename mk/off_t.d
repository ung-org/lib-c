libc_P.1: libc.a(off_t.o)
libc.a(off_t.o): $(OBJDIR)/off_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/off_t.o: src/sys/types/off_t.c
$(OBJDIR)/off_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/off_t.c

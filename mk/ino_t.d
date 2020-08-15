libc_P.1: libc.a(ino_t.o)
libc.a(ino_t.o): $(OBJDIR)/ino_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ino_t.o: src/sys/types/ino_t.c
$(OBJDIR)/ino_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/ino_t.c

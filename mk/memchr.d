libc_C.1: libc.a(memchr.o)
libc.a(memchr.o): $(OBJDIR)/memchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memchr.o: src/string/memchr.c
$(OBJDIR)/memchr.o: src/_assert.h
$(OBJDIR)/memchr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memchr.c

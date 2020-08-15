libc_C.1: libc.a(memcpy.o)
libc.a(memcpy.o): $(OBJDIR)/memcpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memcpy.o: src/string/memcpy.c
$(OBJDIR)/memcpy.o: src/_assert.h
$(OBJDIR)/memcpy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memcpy.c

libc_C.1: libc.a(strncpy.o)
libc.a(strncpy.o): $(OBJDIR)/strncpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncpy.o: src/string/strncpy.c
$(OBJDIR)/strncpy.o: src/_assert.h
$(OBJDIR)/strncpy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strncpy.c

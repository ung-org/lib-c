libc_C.1: libc.a(strcpy.o)
libc.a(strcpy.o): $(OBJDIR)/strcpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcpy.o: src/string/strcpy.c
$(OBJDIR)/strcpy.o: src/_assert.h
$(OBJDIR)/strcpy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strcpy.c

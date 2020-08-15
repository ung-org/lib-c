libc_X.4: libc.a(memccpy.o)
libc.a(memccpy.o): $(OBJDIR)/memccpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/memccpy.o: src/string/memccpy.c
$(OBJDIR)/memccpy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/memccpy.c

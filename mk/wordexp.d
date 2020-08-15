libc_P.2: libc.a(wordexp.o)
libc.a(wordexp.o): $(OBJDIR)/wordexp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wordexp.o: src/wordexp/wordexp.c
$(OBJDIR)/wordexp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wordexp/wordexp.c

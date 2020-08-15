libc_P.2: libc.a(wordfree.o)
libc.a(wordfree.o): $(OBJDIR)/wordfree.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wordfree.o: src/wordexp/wordfree.c
$(OBJDIR)/wordfree.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wordexp/wordfree.c

libc_X.400: libc.a(rindex.o)
libc.a(rindex.o): $(OBJDIR)/rindex.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rindex.o: src/strings/rindex.c
$(OBJDIR)/rindex.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/rindex.c

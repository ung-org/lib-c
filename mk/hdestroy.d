libc_X.4: libc.a(hdestroy.o)
libc.a(hdestroy.o): $(OBJDIR)/hdestroy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hdestroy.o: src/search/hdestroy.c
$(OBJDIR)/hdestroy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/hdestroy.c

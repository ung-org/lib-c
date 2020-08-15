libc_X.4: libc.a(seed48.o)
libc.a(seed48.o): $(OBJDIR)/seed48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/seed48.o: src/stdlib/seed48.c
$(OBJDIR)/seed48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/seed48.c

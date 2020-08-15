libc_X.4: libc.a(tfind.o)
libc.a(tfind.o): $(OBJDIR)/tfind.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tfind.o: src/search/tfind.c
$(OBJDIR)/tfind.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/tfind.c

libc_X.400: libc.a(ftime.o)
libc.a(ftime.o): $(OBJDIR)/ftime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ftime.o: src/sys/timeb/ftime.c
$(OBJDIR)/ftime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/timeb/ftime.c

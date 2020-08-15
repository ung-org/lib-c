libc_C.199901: libc.a(strtoll.o)
libc.a(strtoll.o): $(OBJDIR)/strtoll.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtoll.o: src/stdlib/strtoll.c
$(OBJDIR)/strtoll.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtoll.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtoll.c

libc_C_X1.201112: libc.a(gmtime_s.o)
libc.a(gmtime_s.o): $(OBJDIR)/gmtime_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gmtime_s.o: src/time/gmtime_s.c
$(OBJDIR)/gmtime_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/gmtime_s.c

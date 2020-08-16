libc_C_X1.201112: libc.a(localtime_s.o)
libc.a(localtime_s.o): $(OBJDIR)/localtime_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/localtime_s.o: src/time/localtime_s.c
$(OBJDIR)/localtime_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/localtime_s.c

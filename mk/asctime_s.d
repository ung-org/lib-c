libc_C_X1.201112: libc.a(asctime_s.o)
libc.a(asctime_s.o): $(OBJDIR)/asctime_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/asctime_s.o: src/time/asctime_s.c
$(OBJDIR)/asctime_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/asctime_s.c

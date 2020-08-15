libm_X.4: libm.a(yn.o)
libm.a(yn.o): $(OBJDIR)/yn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/yn.o: src/math/yn.c
$(OBJDIR)/yn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/yn.c

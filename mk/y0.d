libm_X.4: libm.a(y0.o)
libm.a(y0.o): $(OBJDIR)/y0.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/y0.o: src/math/y0.c
$(OBJDIR)/y0.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/y0.c

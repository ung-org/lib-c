libm_C.199901: libm.a(feclearexcept.o)
libm.a(feclearexcept.o): $(OBJDIR)/feclearexcept.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/feclearexcept.o: src/fenv/feclearexcept.c
$(OBJDIR)/feclearexcept.o: src/_safety.h
$(OBJDIR)/feclearexcept.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fenv/feclearexcept.c

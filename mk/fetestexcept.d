libm_C.199901: libm.a(fetestexcept.o)
libm.a(fetestexcept.o): $(OBJDIR)/fetestexcept.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fetestexcept.o: src/fenv/fetestexcept.c
$(OBJDIR)/fetestexcept.o: src/fenv/_fenv.h
$(OBJDIR)/fetestexcept.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/fetestexcept.c

libm_C.199901: libm.a(erf.o)
libm_X.4: libm.a(erf.o)
libm.a(erf.o): $(OBJDIR)/erf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erf.o: src/math/erf.c
$(OBJDIR)/erf.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/erf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/erf.c

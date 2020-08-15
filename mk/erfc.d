libm_C.199901: libm.a(erfc.o)
libm_X.4: libm.a(erfc.o)
libm.a(erfc.o): $(OBJDIR)/erfc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erfc.o: src/math/erfc.c
$(OBJDIR)/erfc.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/erfc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/erfc.c

libm_C.199901: libm.a(cbrt.o)
libm_X.400: libm.a(cbrt.o)
libm.a(cbrt.o): $(OBJDIR)/cbrt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cbrt.o: src/math/cbrt.c
$(OBJDIR)/cbrt.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cbrt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/cbrt.c

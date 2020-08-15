libm_C.199901: libm.a(expm1.o)
libm_X.400: libm.a(expm1.o)
libm.a(expm1.o): $(OBJDIR)/expm1.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/expm1.o: src/math/expm1.c
$(OBJDIR)/expm1.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/expm1.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/expm1.c

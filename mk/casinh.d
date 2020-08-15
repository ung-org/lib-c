libm_C.199901: libm.a(casinh.o)
libm.a(casinh.o): $(OBJDIR)/casinh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/casinh.o: src/complex/casinh.c
$(OBJDIR)/casinh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/casinh.o: src/math/M_PI_4.c
$(OBJDIR)/casinh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/casinh.c

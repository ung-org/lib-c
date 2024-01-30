libm_C.199901: libm.a(casinh.o)
libm.a(casinh.o): $(OBJDIR)/casinh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/casinh.o: src/complex/casinh.c
$(OBJDIR)/casinh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/casinh.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/casinh.c

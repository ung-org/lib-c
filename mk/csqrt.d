libm_C.199901: libm.a(csqrt.o)
libm.a(csqrt.o): $(OBJDIR)/csqrt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/csqrt.o: src/complex/csqrt.c
$(OBJDIR)/csqrt.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/csqrt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/csqrt.c

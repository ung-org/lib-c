libm_C.199901: libm.a(fma.o)
libm.a(fma.o): $(OBJDIR)/fma.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fma.o: src/math/fma.c
$(OBJDIR)/fma.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fma.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/fma.c

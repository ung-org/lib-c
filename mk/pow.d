libm_C.1: libm.a(pow.o)
libm.a(pow.o): $(OBJDIR)/pow.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pow.o: src/math/pow.c
$(OBJDIR)/pow.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/pow.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/pow.c

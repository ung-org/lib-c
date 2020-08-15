libm_C.1: libm.a(fabs.o)
libm.a(fabs.o): $(OBJDIR)/fabs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fabs.o: src/math/fabs.c
$(OBJDIR)/fabs.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fabs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/fabs.c

libm_C.199901: libm.a(nextafter.o)
libm_X.400: libm.a(nextafter.o)
libm.a(nextafter.o): $(OBJDIR)/nextafter.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nextafter.o: src/math/nextafter.c
$(OBJDIR)/nextafter.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/nextafter.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/nextafter.c

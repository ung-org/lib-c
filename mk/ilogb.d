libm_C.199901: libm.a(ilogb.o)
libm_X.400: libm.a(ilogb.o)
libm.a(ilogb.o): $(OBJDIR)/ilogb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ilogb.o: src/math/ilogb.c
$(OBJDIR)/ilogb.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ilogb.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/ilogb.c

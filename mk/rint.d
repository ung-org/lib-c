libm_C.199901: libm.a(rint.o)
libm_X.400: libm.a(rint.o)
libm.a(rint.o): $(OBJDIR)/rint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rint.o: src/math/rint.c
$(OBJDIR)/rint.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/rint.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/rint.c

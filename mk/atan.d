libm_C.1: libm.a(atan.o)
libm.a(atan.o): $(OBJDIR)/atan.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atan.o: src/math/atan.c
$(OBJDIR)/atan.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/atan.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/atan.c

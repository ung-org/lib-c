libm_C.1: libm.a(sqrt.o)
libm.a(sqrt.o): $(OBJDIR)/sqrt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sqrt.o: src/math/sqrt.c
$(OBJDIR)/sqrt.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/sqrt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/sqrt.c

libm_P.200112: libm.a(remainder.o)
libm_X.400: libm.a(remainder.o)
libm.a(remainder.o): $(OBJDIR)/remainder.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/remainder.o: src/math/remainder.c
$(OBJDIR)/remainder.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/remainder.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/remainder.c

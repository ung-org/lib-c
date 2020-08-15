libm_C.199901: libm.a(lgamma.o)
libm_X.4: libm.a(lgamma.o)
libm.a(lgamma.o): $(OBJDIR)/lgamma.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lgamma.o: src/math/lgamma.c
$(OBJDIR)/lgamma.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/lgamma.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/lgamma.c

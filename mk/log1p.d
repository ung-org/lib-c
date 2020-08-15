libm_C.199901: libm.a(log1p.o)
libm_X.400: libm.a(log1p.o)
libm.a(log1p.o): $(OBJDIR)/log1p.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/log1p.o: src/math/log1p.c
$(OBJDIR)/log1p.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/log1p.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/log1p.c

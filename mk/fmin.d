libm_C.199901: libm.a(fmin.o)
libm.a(fmin.o): $(OBJDIR)/fmin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fmin.o: src/math/fmin.c
$(OBJDIR)/fmin.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fmin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/fmin.c

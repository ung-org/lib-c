libm_C.199901: libm.a(hypot.o)
libm_X.4: libm.a(hypot.o)
libm.a(hypot.o): $(OBJDIR)/hypot.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hypot.o: src/math/hypot.c
$(OBJDIR)/hypot.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/hypot.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/hypot.c

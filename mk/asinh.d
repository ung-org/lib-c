libm_C.199901: libm.a(asinh.o)
libm_X.400: libm.a(asinh.o)
libm.a(asinh.o): $(OBJDIR)/asinh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/asinh.o: src/math/asinh.c
$(OBJDIR)/asinh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/asinh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/asinh.c

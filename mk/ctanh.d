libm_C.199901: libm.a(ctanh.o)
libm.a(ctanh.o): $(OBJDIR)/ctanh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ctanh.o: src/complex/ctanh.c
$(OBJDIR)/ctanh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ctanh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/ctanh.c

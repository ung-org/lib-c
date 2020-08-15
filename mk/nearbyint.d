libm_C.199901: libm.a(nearbyint.o)
libm.a(nearbyint.o): $(OBJDIR)/nearbyint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nearbyint.o: src/math/nearbyint.c
$(OBJDIR)/nearbyint.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/nearbyint.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/nearbyint.c

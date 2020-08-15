libm_C.199901: libm.a(catanh.o)
libm.a(catanh.o): $(OBJDIR)/catanh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/catanh.o: src/complex/catanh.c
$(OBJDIR)/catanh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/catanh.o: src/math/M_PI_2.c
$(OBJDIR)/catanh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/catanh.c

libm_C.199901: libm.a(atanh.o)
libm_X.400: libm.a(atanh.o)
libm.a(atanh.o): $(OBJDIR)/atanh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atanh.o: src/math/atanh.c
$(OBJDIR)/atanh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/atanh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/atanh.c

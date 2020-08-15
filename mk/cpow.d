libm_C.199901: libm.a(cpow.o)
libm.a(cpow.o): $(OBJDIR)/cpow.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cpow.o: src/complex/cpow.c
$(OBJDIR)/cpow.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cpow.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cpow.c

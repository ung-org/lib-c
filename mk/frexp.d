libm_C.1: libm.a(frexp.o)
libm.a(frexp.o): $(OBJDIR)/frexp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/frexp.o: src/math/frexp.c
$(OBJDIR)/frexp.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/frexp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/frexp.c

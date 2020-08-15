libm_C.1: libm.a(log10.o)
libm.a(log10.o): $(OBJDIR)/log10.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/log10.o: src/math/log10.c
$(OBJDIR)/log10.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/log10.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/log10.c

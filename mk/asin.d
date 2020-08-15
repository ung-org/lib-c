libm_C.1: libm.a(asin.o)
libm.a(asin.o): $(OBJDIR)/asin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/asin.o: src/math/asin.c
$(OBJDIR)/asin.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/asin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/asin.c

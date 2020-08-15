libm_C.199901: libm.a(logb.o)
libm_X.400: libm.a(logb.o)
libm.a(logb.o): $(OBJDIR)/logb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/logb.o: src/math/logb.c
$(OBJDIR)/logb.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/logb.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/logb.c

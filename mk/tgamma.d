libm_C.199901: libm.a(tgamma.o)
libm.a(tgamma.o): $(OBJDIR)/tgamma.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgamma.o: src/math/tgamma.c
$(OBJDIR)/tgamma.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/tgamma.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/tgamma.c

libm_C.199901: libm.a(acosh.o)
libm_X.400: libm.a(acosh.o)
libm.a(acosh.o): $(OBJDIR)/acosh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/acosh.o: src/math/acosh.c
$(OBJDIR)/acosh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/acosh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/acosh.c

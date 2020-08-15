libm_C.199901: libm.a(scalbln.o)
libm.a(scalbln.o): $(OBJDIR)/scalbln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scalbln.o: src/math/scalbln.c
$(OBJDIR)/scalbln.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/scalbln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/scalbln.c

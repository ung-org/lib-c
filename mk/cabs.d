libm_C.199901: libm.a(cabs.o)
libm.a(cabs.o): $(OBJDIR)/cabs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cabs.o: src/complex/cabs.c
$(OBJDIR)/cabs.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cabs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/cabs.c

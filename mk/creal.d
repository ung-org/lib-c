libm_C.199901: libm.a(creal.o)
libm.a(creal.o): $(OBJDIR)/creal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/creal.o: src/complex/creal.c
$(OBJDIR)/creal.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/creal.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/creal.c

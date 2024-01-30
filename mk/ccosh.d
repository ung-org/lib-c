libm_C.199901: libm.a(ccosh.o)
libm.a(ccosh.o): $(OBJDIR)/ccosh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ccosh.o: src/complex/ccosh.c
$(OBJDIR)/ccosh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ccosh.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/ccosh.c

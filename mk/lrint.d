libm_C.199901: libm.a(lrint.o)
libm.a(lrint.o): $(OBJDIR)/lrint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lrint.o: src/math/lrint.c
$(OBJDIR)/lrint.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/lrint.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/lrint.c

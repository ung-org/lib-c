libm_C.199901: libm.a(lround.o)
libm.a(lround.o): $(OBJDIR)/lround.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lround.o: src/math/lround.c
$(OBJDIR)/lround.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/lround.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/lround.c

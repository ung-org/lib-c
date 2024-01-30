libm_C.199901: libm.a(round.o)
libm.a(round.o): $(OBJDIR)/round.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/round.o: src/math/round.c
$(OBJDIR)/round.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/round.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/round.c

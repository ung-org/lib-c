libm_C.199901: libm.a(casin.o)
libm.a(casin.o): $(OBJDIR)/casin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/casin.o: src/complex/casin.c
$(OBJDIR)/casin.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/casin.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/casin.c

libm_C.199901: libm.a(carg.o)
libm.a(carg.o): $(OBJDIR)/carg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/carg.o: src/complex/carg.c
$(OBJDIR)/carg.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/carg.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/carg.c

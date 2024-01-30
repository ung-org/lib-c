libm_C.199901: libm.a(ccos.o)
libm.a(ccos.o): $(OBJDIR)/ccos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ccos.o: src/complex/ccos.c
$(OBJDIR)/ccos.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ccos.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/ccos.c

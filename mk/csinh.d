libm_C.199901: libm.a(csinh.o)
libm.a(csinh.o): $(OBJDIR)/csinh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/csinh.o: src/complex/csinh.c
$(OBJDIR)/csinh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/csinh.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/csinh.c

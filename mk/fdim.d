libm_C.199901: libm.a(fdim.o)
libm.a(fdim.o): $(OBJDIR)/fdim.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fdim.o: src/math/fdim.c
$(OBJDIR)/fdim.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fdim.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/fdim.c

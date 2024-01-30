libm_C.1: libm.a(floor.o)
libm.a(floor.o): $(OBJDIR)/floor.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/floor.o: src/math/floor.c
$(OBJDIR)/floor.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/floor.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/floor.c

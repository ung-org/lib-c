libm_C.1: libm.a(ceil.o)
libm.a(ceil.o): $(OBJDIR)/ceil.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ceil.o: src/math/ceil.c
$(OBJDIR)/ceil.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ceil.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/ceil.c

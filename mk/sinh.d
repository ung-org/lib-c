libm_C.1: libm.a(sinh.o)
libm.a(sinh.o): $(OBJDIR)/sinh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sinh.o: src/math/sinh.c
$(OBJDIR)/sinh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/sinh.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/sinh.c

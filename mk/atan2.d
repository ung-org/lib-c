libm_C.1: libm.a(atan2.o)
libm.a(atan2.o): $(OBJDIR)/atan2.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atan2.o: src/math/atan2.c
$(OBJDIR)/atan2.o: src/_safety.h
$(OBJDIR)/atan2.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/atan2.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/atan2.c

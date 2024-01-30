libm_C.1: libm.a(log.o)
libm.a(log.o): $(OBJDIR)/log.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/log.o: src/math/log.c
$(OBJDIR)/log.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/log.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/log.c

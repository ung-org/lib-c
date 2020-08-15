libm_C.1: libm.a(modf.o)
libm.a(modf.o): $(OBJDIR)/modf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/modf.o: src/math/modf.c
$(OBJDIR)/modf.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/modf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/modf.c

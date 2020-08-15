libm_C.1: libm.a(sin.o)
libm.a(sin.o): $(OBJDIR)/sin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sin.o: src/math/sin.c
$(OBJDIR)/sin.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/sin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/sin.c

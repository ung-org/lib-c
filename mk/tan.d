libm_C.1: libm.a(tan.o)
libm.a(tan.o): $(OBJDIR)/tan.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tan.o: src/math/tan.c
$(OBJDIR)/tan.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/tan.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/tan.c

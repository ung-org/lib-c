libm_C.1: libm.a(exp.o)
libm.a(exp.o): $(OBJDIR)/exp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/exp.o: src/math/exp.c
$(OBJDIR)/exp.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/exp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/exp.c

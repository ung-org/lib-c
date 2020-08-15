libm_C.199901: libm.a(exp2.o)
libm.a(exp2.o): $(OBJDIR)/exp2.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/exp2.o: src/math/exp2.c
$(OBJDIR)/exp2.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/exp2.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/exp2.c

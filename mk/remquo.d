libm_C.199901: libm.a(remquo.o)
libm.a(remquo.o): $(OBJDIR)/remquo.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/remquo.o: src/math/remquo.c
$(OBJDIR)/remquo.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/remquo.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/remquo.c

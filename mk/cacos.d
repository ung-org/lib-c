libm_C.199901: libm.a(cacos.o)
libm.a(cacos.o): $(OBJDIR)/cacos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cacos.o: src/complex/cacos.c
$(OBJDIR)/cacos.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cacos.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cacos.c

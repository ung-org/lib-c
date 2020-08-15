libm_C.1: libm.a(acos.o)
libm.a(acos.o): $(OBJDIR)/acos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/acos.o: src/math/acos.c
$(OBJDIR)/acos.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/acos.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/acos.c

libm_C.1: libm.a(tanh.o)
libm.a(tanh.o): $(OBJDIR)/tanh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tanh.o: src/math/tanh.c
$(OBJDIR)/tanh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/tanh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/tanh.c

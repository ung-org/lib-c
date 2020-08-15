libm_C.1: libm.a(fmod.o)
libm.a(fmod.o): $(OBJDIR)/fmod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fmod.o: src/math/fmod.c
$(OBJDIR)/fmod.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fmod.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/fmod.c

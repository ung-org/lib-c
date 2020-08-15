libm_C.1: libm.a(cos.o)
libm.a(cos.o): $(OBJDIR)/cos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cos.o: src/math/cos.c
$(OBJDIR)/cos.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cos.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/cos.c

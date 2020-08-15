libm_C.199901: libm.a(conj.o)
libm.a(conj.o): $(OBJDIR)/conj.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/conj.o: src/complex/conj.c
$(OBJDIR)/conj.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/conj.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/conj.c

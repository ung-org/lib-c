libm_C.199901: libm.a(log2.o)
libm.a(log2.o): $(OBJDIR)/log2.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/log2.o: src/math/log2.c
$(OBJDIR)/log2.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/log2.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/log2.c

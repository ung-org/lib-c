libm_C.199901: libm.a(cexp.o)
libm.a(cexp.o): $(OBJDIR)/cexp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cexp.o: src/complex/cexp.c
$(OBJDIR)/cexp.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cexp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cexp.c

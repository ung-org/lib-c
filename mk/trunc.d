libm_C.199901: libm.a(trunc.o)
libm.a(trunc.o): $(OBJDIR)/trunc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/trunc.o: src/math/trunc.c
$(OBJDIR)/trunc.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/trunc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/trunc.c

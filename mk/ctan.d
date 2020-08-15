libm_C.199901: libm.a(ctan.o)
libm.a(ctan.o): $(OBJDIR)/ctan.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ctan.o: src/complex/ctan.c
$(OBJDIR)/ctan.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ctan.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/ctan.c

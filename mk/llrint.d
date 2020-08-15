libm_C.199901: libm.a(llrint.o)
libm.a(llrint.o): $(OBJDIR)/llrint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/llrint.o: src/math/llrint.c
$(OBJDIR)/llrint.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/llrint.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/llrint.c

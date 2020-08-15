libm_C.199901: libm.a(scalbn.o)
libm.a(scalbn.o): $(OBJDIR)/scalbn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scalbn.o: src/math/scalbn.c
$(OBJDIR)/scalbn.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/scalbn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/scalbn.c

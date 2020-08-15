libm_C.199901: libm.a(cproj.o)
libm.a(cproj.o): $(OBJDIR)/cproj.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cproj.o: src/complex/cproj.c
$(OBJDIR)/cproj.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cproj.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cproj.c

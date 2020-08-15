libm_C.199901: libm.a(nexttoward.o)
libm.a(nexttoward.o): $(OBJDIR)/nexttoward.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nexttoward.o: src/math/nexttoward.c
$(OBJDIR)/nexttoward.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/nexttoward.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/nexttoward.c

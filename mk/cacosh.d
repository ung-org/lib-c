libm_C.199901: libm.a(cacosh.o)
libm.a(cacosh.o): $(OBJDIR)/cacosh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cacosh.o: src/complex/cacosh.c
$(OBJDIR)/cacosh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cacosh.o: src/math/M_PI.c
$(OBJDIR)/cacosh.o: src/math/M_PI_2.c
$(OBJDIR)/cacosh.o: src/math/M_PI_4.c
$(OBJDIR)/cacosh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cacosh.c

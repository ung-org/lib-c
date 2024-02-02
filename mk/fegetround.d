libm_C.199901: libm.a(fegetround.o)
libm.a(fegetround.o): $(OBJDIR)/fegetround.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fegetround.o: src/fenv/fegetround.c
$(OBJDIR)/fegetround.o: src/fenv/_fenv.h
$(OBJDIR)/fegetround.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/fegetround.c

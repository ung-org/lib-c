libm_C.199901: libm.a(fesetenv.o)
libm.a(fesetenv.o): $(OBJDIR)/fesetenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fesetenv.o: src/fenv/fesetenv.c
$(OBJDIR)/fesetenv.o: src/_safety.h
$(OBJDIR)/fesetenv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/fesetenv.c

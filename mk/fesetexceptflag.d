libm_C.199901: libm.a(fesetexceptflag.o)
libm.a(fesetexceptflag.o): $(OBJDIR)/fesetexceptflag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fesetexceptflag.o: src/fenv/fesetexceptflag.c
$(OBJDIR)/fesetexceptflag.o: src/_safety.h
$(OBJDIR)/fesetexceptflag.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/fesetexceptflag.c

libm_C.199901: libm.a(fegetexceptflag.o)
libm.a(fegetexceptflag.o): $(OBJDIR)/fegetexceptflag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fegetexceptflag.o: src/fenv/fegetexceptflag.c
$(OBJDIR)/fegetexceptflag.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fenv/fegetexceptflag.c

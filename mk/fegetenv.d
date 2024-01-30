libm_C.199901: libm.a(fegetenv.o)
libm.a(fegetenv.o): $(OBJDIR)/fegetenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fegetenv.o: src/fenv/fegetenv.c
$(OBJDIR)/fegetenv.o: src/_safety.h
$(OBJDIR)/fegetenv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fenv/fegetenv.c

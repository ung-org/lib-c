libm_C.199901: libm.a(feraiseexcept.o)
libm.a(feraiseexcept.o): $(OBJDIR)/feraiseexcept.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/feraiseexcept.o: src/fenv/feraiseexcept.c
$(OBJDIR)/feraiseexcept.o: src/_safety.h
$(OBJDIR)/feraiseexcept.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/feraiseexcept.c

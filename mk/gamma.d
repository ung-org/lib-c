libm_X.4: libm.a(gamma.o)
libm.a(gamma.o): $(OBJDIR)/gamma.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gamma.o: src/math/gamma.c
$(OBJDIR)/gamma.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/gamma.c

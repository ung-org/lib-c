libm_X.4: libm.a(j0.o)
libm.a(j0.o): $(OBJDIR)/j0.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/j0.o: src/math/j0.c
$(OBJDIR)/j0.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/j0.c

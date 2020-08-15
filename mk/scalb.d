libm_X.400: libm.a(scalb.o)
libm.a(scalb.o): $(OBJDIR)/scalb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scalb.o: src/math/scalb.c
$(OBJDIR)/scalb.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/scalb.c

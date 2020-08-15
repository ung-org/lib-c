libm_X.4: libm.a(j1.o)
libm.a(j1.o): $(OBJDIR)/j1.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/j1.o: src/math/j1.c
$(OBJDIR)/j1.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/j1.c

libm_X.4: libm.a(signgam.o)
libm.a(signgam.o): $(OBJDIR)/signgam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/signgam.o: src/math/signgam.c
$(OBJDIR)/signgam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/signgam.c

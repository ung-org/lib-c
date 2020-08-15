libm_X.4: libm.a(jn.o)
libm.a(jn.o): $(OBJDIR)/jn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/jn.o: src/math/jn.c
$(OBJDIR)/jn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/jn.c

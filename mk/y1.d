libm_X.4: libm.a(y1.o)
libm.a(y1.o): $(OBJDIR)/y1.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/y1.o: src/math/y1.c
$(OBJDIR)/y1.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/math/y1.c

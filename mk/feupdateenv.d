libm_C.199901: libm.a(feupdateenv.o)
libm.a(feupdateenv.o): $(OBJDIR)/feupdateenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/feupdateenv.o: src/fenv/feupdateenv.c
$(OBJDIR)/feupdateenv.o: src/fenv/_fenv.h
$(OBJDIR)/feupdateenv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/feupdateenv.c

libm_C.199901: libm.a(feholdexcept.o)
libm.a(feholdexcept.o): $(OBJDIR)/feholdexcept.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/feholdexcept.o: src/fenv/feholdexcept.c
$(OBJDIR)/feholdexcept.o: src/_safety.h
$(OBJDIR)/feholdexcept.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/feholdexcept.c

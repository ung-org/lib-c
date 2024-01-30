libm_C.199901: libm.a(llround.o)
libm.a(llround.o): $(OBJDIR)/llround.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/llround.o: src/math/llround.c
$(OBJDIR)/llround.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/llround.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/llround.c

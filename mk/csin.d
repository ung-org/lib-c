libm_C.199901: libm.a(csin.o)
libm.a(csin.o): $(OBJDIR)/csin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/csin.o: src/complex/csin.c
$(OBJDIR)/csin.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/csin.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/csin.c

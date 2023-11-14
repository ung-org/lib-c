libm_C.199901: libm.a(cacosh.o)
libm.a(cacosh.o): $(OBJDIR)/cacosh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cacosh.o: src/complex/cacosh.c
$(OBJDIR)/cacosh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cacosh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/cacosh.c

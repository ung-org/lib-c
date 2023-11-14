libm_C.199901: libm.a(clog.o)
libm.a(clog.o): $(OBJDIR)/clog.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clog.o: src/complex/clog.c
$(OBJDIR)/clog.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/clog.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/complex/clog.c

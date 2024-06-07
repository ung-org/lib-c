libc_C.0: libc.a(__fenv_h.o)
libc.a(__fenv_h.o): $(OBJDIR)/__fenv_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__fenv_h.o: src/fenv/__fenv_h.c
$(OBJDIR)/__fenv_h.o: src/fenv/_fenv.h
$(OBJDIR)/__fenv_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/__fenv_h.c

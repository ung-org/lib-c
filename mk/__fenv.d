libc_C.-1: libc.a(__fenv.o)
libc.a(__fenv.o): $(OBJDIR)/__fenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__fenv.o: src/fenv/__fenv.c
$(OBJDIR)/__fenv.o: src/fenv/_fenv.h
$(OBJDIR)/__fenv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/__fenv.c

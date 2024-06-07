libc_C.0: libc.a(__FE_DFL_ENV.o)
libc.a(__FE_DFL_ENV.o): $(OBJDIR)/__FE_DFL_ENV.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__FE_DFL_ENV.o: src/fenv/__FE_DFL_ENV.c
$(OBJDIR)/__FE_DFL_ENV.o: src/fenv/_fenv.h
$(OBJDIR)/__FE_DFL_ENV.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fenv/__FE_DFL_ENV.c

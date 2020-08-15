libc_C.0: libc.a(__stdlib.o)
libc.a(__stdlib.o): $(OBJDIR)/__stdlib.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdlib.o: src/stdlib/__stdlib.c
$(OBJDIR)/__stdlib.o: src/stdlib/_stdlib.h
$(OBJDIR)/__stdlib.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/__stdlib.c

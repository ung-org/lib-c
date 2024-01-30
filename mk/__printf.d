libc_C.0: libc.a(__printf.o)
libc.a(__printf.o): $(OBJDIR)/__printf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__printf.o: src/stdio/__printf.c
$(OBJDIR)/__printf.o: src/wctype/wint_t.h
$(OBJDIR)/__printf.o: src/wctype/wctrans_t.h
$(OBJDIR)/__printf.o: src/stdio/_stdio.h
$(OBJDIR)/__printf.o: src/_safety.h
$(OBJDIR)/__printf.o: src/stdint/intmax_t.h
$(OBJDIR)/__printf.o: src/stdint/uintmax_t.h
$(OBJDIR)/__printf.o: src/stdint/intptr_t.h
$(OBJDIR)/__printf.o: src/stdint/UINTMAX_MAX.h
$(OBJDIR)/__printf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/__printf.c

libc_C.0: libc.a(__stdio_h.o)
libc.a(__stdio_h.o): $(OBJDIR)/__stdio_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdio_h.o: src/stdio/__stdio_h.c
$(OBJDIR)/__stdio_h.o: src/stdio/_stdio.h
$(OBJDIR)/__stdio_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__stdio_h.c

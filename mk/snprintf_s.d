libc_C_X1.201112: libc.a(snprintf_s.o)
libc.a(snprintf_s.o): $(OBJDIR)/snprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/snprintf_s.o: src/stdio/snprintf_s.c
$(OBJDIR)/snprintf_s.o: src/stdio/_stdio.h
$(OBJDIR)/snprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/snprintf_s.c

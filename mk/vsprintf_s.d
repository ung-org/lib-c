libc_C_X1.201112: libc.a(vsprintf_s.o)
libc.a(vsprintf_s.o): $(OBJDIR)/vsprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsprintf_s.o: src/stdio/vsprintf_s.c
$(OBJDIR)/vsprintf_s.o: src/stdio/_format.h
$(OBJDIR)/vsprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vsprintf_s.c

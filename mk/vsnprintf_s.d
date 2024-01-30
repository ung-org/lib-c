libc_C_X1.201112: libc.a(vsnprintf_s.o)
libc.a(vsnprintf_s.o): $(OBJDIR)/vsnprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsnprintf_s.o: src/stdio/vsnprintf_s.c
$(OBJDIR)/vsnprintf_s.o: src/stdio/_stdio.h
$(OBJDIR)/vsnprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vsnprintf_s.c

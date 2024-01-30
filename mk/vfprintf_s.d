libc_C_X1.201112: libc.a(vfprintf_s.o)
libc.a(vfprintf_s.o): $(OBJDIR)/vfprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfprintf_s.o: src/stdio/vfprintf_s.c
$(OBJDIR)/vfprintf_s.o: src/stdio/_stdio.h
$(OBJDIR)/vfprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vfprintf_s.c

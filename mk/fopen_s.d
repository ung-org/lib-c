libc_C_X1.201112: libc.a(fopen_s.o)
libc.a(fopen_s.o): $(OBJDIR)/fopen_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fopen_s.o: src/stdio/fopen_s.c
$(OBJDIR)/fopen_s.o: src/stdio/_stdio.h
$(OBJDIR)/fopen_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fopen_s.c

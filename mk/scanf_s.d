libc_C_X1.201112: libc.a(scanf_s.o)
libc.a(scanf_s.o): $(OBJDIR)/scanf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scanf_s.o: src/stdio/scanf_s.c
$(OBJDIR)/scanf_s.o: src/stdio/_stdio.h
$(OBJDIR)/scanf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/scanf_s.c

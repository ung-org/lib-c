libc_C_X1.201112: libc.a(fprintf_s.o)
libc.a(fprintf_s.o): $(OBJDIR)/fprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fprintf_s.o: src/stdio/fprintf_s.c
$(OBJDIR)/fprintf_s.o: src/stdio/_stdio.h
$(OBJDIR)/fprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fprintf_s.c

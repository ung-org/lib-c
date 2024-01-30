libc_C.199901: libc.a(vsscanf.o)
libc.a(vsscanf.o): $(OBJDIR)/vsscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vsscanf.o: src/stdio/vsscanf.c
$(OBJDIR)/vsscanf.o: src/stdio/_stdio.h
$(OBJDIR)/vsscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vsscanf.c

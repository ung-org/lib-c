libc_C.199901: libc.a(vfscanf.o)
libc.a(vfscanf.o): $(OBJDIR)/vfscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfscanf.o: src/stdio/vfscanf.c
$(OBJDIR)/vfscanf.o: src/stdio/_stdio.h
$(OBJDIR)/vfscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vfscanf.c

libc_C.199901: libc.a(vscanf.o)
libc.a(vscanf.o): $(OBJDIR)/vscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vscanf.o: src/stdio/vscanf.c
$(OBJDIR)/vscanf.o: src/stdio/_format.h
$(OBJDIR)/vscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/vscanf.c

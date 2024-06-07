libc_C.1: libc.a(sscanf.o)
libc.a(sscanf.o): $(OBJDIR)/sscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sscanf.o: src/stdio/sscanf.c
$(OBJDIR)/sscanf.o: src/stdio/_format.h
$(OBJDIR)/sscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/sscanf.c

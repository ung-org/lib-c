libc_C.1: libc.a(fscanf.o)
libc.a(fscanf.o): $(OBJDIR)/fscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fscanf.o: src/stdio/fscanf.c
$(OBJDIR)/fscanf.o: src/stdio/_format.h
$(OBJDIR)/fscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fscanf.c

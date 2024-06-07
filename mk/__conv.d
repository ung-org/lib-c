libc_C.0: libc.a(__conv.o)
libc.a(__conv.o): $(OBJDIR)/__conv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__conv.o: src/stdio/__conv.c
$(OBJDIR)/__conv.o: src/stdio/_format.h
$(OBJDIR)/__conv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__conv.c

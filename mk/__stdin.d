libc_C.0: libc.a(__stdin.o)
libc.a(__stdin.o): $(OBJDIR)/__stdin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdin.o: src/stdio/__stdin.c
$(OBJDIR)/__stdin.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__stdin.c

libc_C.0: libc.a(__stdout.o)
libc.a(__stdout.o): $(OBJDIR)/__stdout.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdout.o: src/stdio/__stdout.c
$(OBJDIR)/__stdout.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__stdout.c

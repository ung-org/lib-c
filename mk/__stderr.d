libc_C.0: libc.a(__stderr.o)
libc.a(__stderr.o): $(OBJDIR)/__stderr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stderr.o: src/stdio/__stderr.c
$(OBJDIR)/__stderr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/__stderr.c

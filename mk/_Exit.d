libc_C.199901: libc.a(_Exit.o)
libc.a(_Exit.o): $(OBJDIR)/_Exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_Exit.o: src/stdlib/_Exit.c
$(OBJDIR)/_Exit.o: src/stdlib/_stdlib.h
$(OBJDIR)/_Exit.o: src/_syscall.h
$(OBJDIR)/_Exit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/_Exit.c

libc_C.201112: libc.a(quick_exit.o)
libc.a(quick_exit.o): $(OBJDIR)/quick_exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/quick_exit.o: src/stdlib/quick_exit.c
$(OBJDIR)/quick_exit.o: src/stdlib/_stdlib.h
$(OBJDIR)/quick_exit.o: src/_syscall.h
$(OBJDIR)/quick_exit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/quick_exit.c

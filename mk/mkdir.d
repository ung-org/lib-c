libc_P.1: libc.a(mkdir.o)
libc.a(mkdir.o): $(OBJDIR)/mkdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mkdir.o: src/sys/stat/mkdir.c
$(OBJDIR)/mkdir.o: src/_syscall.h
$(OBJDIR)/mkdir.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/stat/mkdir.c

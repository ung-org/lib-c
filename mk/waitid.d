libc_P.200809: libc.a(waitid.o)
libc_X.400: libc.a(waitid.o)
libc.a(waitid.o): $(OBJDIR)/waitid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/waitid.o: src/sys/wait/waitid.c
$(OBJDIR)/waitid.o: src/_syscall.h
$(OBJDIR)/waitid.o: src/sys/wait/idtype_t.c
$(OBJDIR)/waitid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/wait/waitid.c

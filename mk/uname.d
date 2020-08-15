libc_P.1: libc.a(uname.o)
libc.a(uname.o): $(OBJDIR)/uname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/uname.o: src/sys/utsname/uname.c
$(OBJDIR)/uname.o: src/_assert.h
$(OBJDIR)/uname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/utsname/uname.c

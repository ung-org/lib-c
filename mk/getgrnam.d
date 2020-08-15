libc_P.1: libc.a(getgrnam.o)
libc.a(getgrnam.o): $(OBJDIR)/getgrnam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getgrnam.o: src/grp/getgrnam.c
$(OBJDIR)/getgrnam.o: src/grp/_grp.h
$(OBJDIR)/getgrnam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/getgrnam.c

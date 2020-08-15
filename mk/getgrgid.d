libc_P.1: libc.a(getgrgid.o)
libc.a(getgrgid.o): $(OBJDIR)/getgrgid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getgrgid.o: src/grp/getgrgid.c
$(OBJDIR)/getgrgid.o: src/grp/_grp.h
$(OBJDIR)/getgrgid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/getgrgid.c

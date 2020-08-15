libc_P.1: libc.a(getpwnam.o)
libc.a(getpwnam.o): $(OBJDIR)/getpwnam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpwnam.o: src/pwd/getpwnam.c
$(OBJDIR)/getpwnam.o: src/pwd/_pwd.h
$(OBJDIR)/getpwnam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/getpwnam.c

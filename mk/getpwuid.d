libc_P.1: libc.a(getpwuid.o)
libc.a(getpwuid.o): $(OBJDIR)/getpwuid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpwuid.o: src/pwd/getpwuid.c
$(OBJDIR)/getpwuid.o: src/pwd/_pwd.h
$(OBJDIR)/getpwuid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/getpwuid.c

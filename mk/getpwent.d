libc_X.400: libc.a(getpwent.o)
libc.a(getpwent.o): $(OBJDIR)/getpwent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpwent.o: src/pwd/getpwent.c
$(OBJDIR)/getpwent.o: src/_config.h
$(OBJDIR)/getpwent.o: src/pwd/_pwd.h
$(OBJDIR)/getpwent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/getpwent.c

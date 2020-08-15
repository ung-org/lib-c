libc_X.400: libc.a(setpwent.o)
libc.a(setpwent.o): $(OBJDIR)/setpwent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setpwent.o: src/pwd/setpwent.c
$(OBJDIR)/setpwent.o: src/pwd/_pwd.h
$(OBJDIR)/setpwent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/setpwent.c

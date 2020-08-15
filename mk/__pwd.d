libc_P.1: libc.a(__pwd.o)
libc.a(__pwd.o): $(OBJDIR)/__pwd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__pwd.o: src/pwd/__pwd.c
$(OBJDIR)/__pwd.o: src/pwd/_pwd.h
$(OBJDIR)/__pwd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/__pwd.c

libc_P.2: libc.a(regexec.o)
libc.a(regexec.o): $(OBJDIR)/regexec.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regexec.o: src/regex/regexec.c
$(OBJDIR)/regexec.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regex/regexec.c

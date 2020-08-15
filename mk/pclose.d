libc_P.2: libc.a(pclose.o)
libc.a(pclose.o): $(OBJDIR)/pclose.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pclose.o: src/stdio/pclose.c
$(OBJDIR)/pclose.o: src/stdio/_stdio.h
$(OBJDIR)/pclose.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/pclose.c

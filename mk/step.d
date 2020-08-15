libc_X.4: libc.a(step.o)
libc.a(step.o): $(OBJDIR)/step.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/step.o: src/regexp/step.c
$(OBJDIR)/step.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/step.c

libc_C.0: libc.a(__sys.x86-64.s.o)
libc.a(__sys.x86-64.s.o): $(OBJDIR)/__sys.x86-64.s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__sys.x86-64.s.o: src/__sys.x86-64.s
$(OBJDIR)/__sys.x86-64.s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/__sys.x86-64.s

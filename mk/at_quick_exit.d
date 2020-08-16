libc_C.201112: libc.a(at_quick_exit.o)
libc.a(at_quick_exit.o): $(OBJDIR)/at_quick_exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/at_quick_exit.o: src/stdlib/at_quick_exit.c
$(OBJDIR)/at_quick_exit.o: src/stdlib/_stdlib.h
$(OBJDIR)/at_quick_exit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/at_quick_exit.c

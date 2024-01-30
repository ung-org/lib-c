libc_C.1: libc.a(difftime.o)
libc.a(difftime.o): $(OBJDIR)/difftime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/difftime.o: src/time/difftime.c
$(OBJDIR)/difftime.o: src/_safety.h
$(OBJDIR)/difftime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/difftime.c

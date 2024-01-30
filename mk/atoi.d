libc_C.1: libc.a(atoi.o)
libc.a(atoi.o): $(OBJDIR)/atoi.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atoi.o: src/stdlib/atoi.c
$(OBJDIR)/atoi.o: src/stdlib/_stdlib.h
$(OBJDIR)/atoi.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/atoi.c

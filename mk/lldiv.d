libc_C.199901: libc.a(lldiv.o)
libc.a(lldiv.o): $(OBJDIR)/lldiv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lldiv.o: src/stdlib/lldiv.c
$(OBJDIR)/lldiv.o: src/stdlib/_stdlib.h
$(OBJDIR)/lldiv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/lldiv.c

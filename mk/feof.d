libc_C.1: libc.a(feof.o)
libc.a(feof.o): $(OBJDIR)/feof.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/feof.o: src/stdio/feof.c
$(OBJDIR)/feof.o: src/stdio/_stdio.h
$(OBJDIR)/feof.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/feof.c

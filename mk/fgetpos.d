libc_C.1: libc.a(fgetpos.o)
libc.a(fgetpos.o): $(OBJDIR)/fgetpos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fgetpos.o: src/stdio/fgetpos.c
$(OBJDIR)/fgetpos.o: src/stdio/_stdio.h
$(OBJDIR)/fgetpos.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fgetpos.c

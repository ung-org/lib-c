libc_C.1: libc.a(fopen.o)
libc.a(fopen.o): $(OBJDIR)/fopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fopen.o: src/stdio/fopen.c
$(OBJDIR)/fopen.o: src/stdio/_stdio.h
$(OBJDIR)/fopen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fopen.c

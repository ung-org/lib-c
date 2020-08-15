libc_C.1: libc.a(fflush.o)
libc.a(fflush.o): $(OBJDIR)/fflush.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fflush.o: src/stdio/fflush.c
$(OBJDIR)/fflush.o: src/stdio/_stdio.h
$(OBJDIR)/fflush.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fflush.c

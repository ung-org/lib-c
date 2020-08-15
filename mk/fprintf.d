libc_C.1: libc.a(fprintf.o)
libc.a(fprintf.o): $(OBJDIR)/fprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fprintf.o: src/stdio/fprintf.c
$(OBJDIR)/fprintf.o: src/stdio/_stdio.h
$(OBJDIR)/fprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/fprintf.c

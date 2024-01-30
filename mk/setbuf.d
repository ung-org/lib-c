libc_C.1: libc.a(setbuf.o)
libc.a(setbuf.o): $(OBJDIR)/setbuf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setbuf.o: src/stdio/setbuf.c
$(OBJDIR)/setbuf.o: src/stdio/_stdio.h
$(OBJDIR)/setbuf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/setbuf.c

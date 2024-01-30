libc_C.1: libc.a(tmpfile.o)
libc.a(tmpfile.o): $(OBJDIR)/tmpfile.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tmpfile.o: src/stdio/tmpfile.c
$(OBJDIR)/tmpfile.o: src/stdio/_stdio.h
$(OBJDIR)/tmpfile.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/tmpfile.c

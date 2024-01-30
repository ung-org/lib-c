libc_C.1: libc.a(rename.o)
libc.a(rename.o): $(OBJDIR)/rename.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rename.o: src/stdio/rename.c
$(OBJDIR)/rename.o: src/stdio/_stdio.h
$(OBJDIR)/rename.o: src/_syscall.h
$(OBJDIR)/rename.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/rename.c

libc_C.1: libc.a(realloc.o)
libc.a(realloc.o): $(OBJDIR)/realloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/realloc.o: src/stdlib/realloc.c
$(OBJDIR)/realloc.o: src/stdlib/_stdlib.h
$(OBJDIR)/realloc.o: src/_syscall.h
$(OBJDIR)/realloc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/realloc.c

libc_C.1: libc.a(qsort.o)
libc.a(qsort.o): $(OBJDIR)/qsort.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/qsort.o: src/stdlib/qsort.c
$(OBJDIR)/qsort.o: src/stdlib/_stdlib.h
$(OBJDIR)/qsort.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/qsort.c

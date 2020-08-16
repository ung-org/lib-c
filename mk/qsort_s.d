libc_C_X1.201112: libc.a(qsort_s.o)
libc.a(qsort_s.o): $(OBJDIR)/qsort_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/qsort_s.o: src/stdlib/qsort_s.c
$(OBJDIR)/qsort_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/qsort_s.c

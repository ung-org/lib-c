libc_C.201112: libc.a(aligned_alloc.o)
libc.a(aligned_alloc.o): $(OBJDIR)/aligned_alloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aligned_alloc.o: src/stdlib/aligned_alloc.c
$(OBJDIR)/aligned_alloc.o: src/stdlib/_stdlib.h
$(OBJDIR)/aligned_alloc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/aligned_alloc.c

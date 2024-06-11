libc_C.0: libc.a(__jkmalloc.o)
libc.a(__jkmalloc.o): $(OBJDIR)/__jkmalloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__jkmalloc.o: src/stdlib/__jkmalloc.c
$(OBJDIR)/__jkmalloc.o: src/_safety.h
$(OBJDIR)/__jkmalloc.o: src/_forced/mmap.h
$(OBJDIR)/__jkmalloc.o: src/_forced/munmap.h
$(OBJDIR)/__jkmalloc.o: src/_forced/mprotect.h
$(OBJDIR)/__jkmalloc.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/__jkmalloc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/__jkmalloc.c

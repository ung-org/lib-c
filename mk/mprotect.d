libc_P.199309: libc.a(mprotect.o)
libc_X.400: libc.a(mprotect.o)
libc.a(mprotect.o): $(OBJDIR)/mprotect.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mprotect.o: src/sys/mman/mprotect.c
$(OBJDIR)/mprotect.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/mman/mprotect.c

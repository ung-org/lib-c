libc_P.200809: libc.a(lchown.o)
libc_X.400: libc.a(lchown.o)
libc.a(lchown.o): $(OBJDIR)/lchown.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lchown.o: src/unistd/lchown.c
$(OBJDIR)/lchown.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/lchown.c

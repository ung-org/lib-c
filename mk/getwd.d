libc_X.400: libc.a(getwd.o)
libc.a(getwd.o): $(OBJDIR)/getwd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getwd.o: src/unistd/getwd.c
$(OBJDIR)/getwd.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getwd.c

libc_X.4: libc.a(nice.o)
libc.a(nice.o): $(OBJDIR)/nice.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nice.o: src/unistd/nice.c
$(OBJDIR)/nice.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/nice.c

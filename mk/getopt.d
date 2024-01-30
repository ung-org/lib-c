libc_P.2: libc.a(getopt.o)
libc.a(getopt.o): $(OBJDIR)/getopt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getopt.o: src/unistd/getopt.c
$(OBJDIR)/getopt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getopt.c

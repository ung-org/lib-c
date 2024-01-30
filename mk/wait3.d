libc_X.400: libc.a(wait3.o)
libc.a(wait3.o): $(OBJDIR)/wait3.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wait3.o: src/sys/wait/wait3.c
$(OBJDIR)/wait3.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/wait/wait3.c

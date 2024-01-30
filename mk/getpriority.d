libc_X.400: libc.a(getpriority.o)
libc.a(getpriority.o): $(OBJDIR)/getpriority.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpriority.o: src/sys/resource/getpriority.c
$(OBJDIR)/getpriority.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/resource/getpriority.c

libc_P.199309: libc.a(mlockall.o)
libc.a(mlockall.o): $(OBJDIR)/mlockall.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mlockall.o: src/sys/mman/mlockall.c
$(OBJDIR)/mlockall.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/mman/mlockall.c

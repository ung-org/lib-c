libc_P.1: libc.a(stat.o)
libc.a(stat.o): $(OBJDIR)/stat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/stat.o: src/sys/stat/stat.c
$(OBJDIR)/stat.o: src/_safety.h
$(OBJDIR)/stat.o: src/_syscall.h
$(OBJDIR)/stat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/stat/stat.c

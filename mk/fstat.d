libc_P.1: libc.a(fstat.o)
libc.a(fstat.o): $(OBJDIR)/fstat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fstat.o: src/sys/stat/fstat.c
$(OBJDIR)/fstat.o: src/_syscall.h
$(OBJDIR)/fstat.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/stat/fstat.c

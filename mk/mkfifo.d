libc_P.1: libc.a(mkfifo.o)
libc.a(mkfifo.o): $(OBJDIR)/mkfifo.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mkfifo.o: src/sys/stat/mkfifo.c
$(OBJDIR)/mkfifo.o: src/_syscall.h
$(OBJDIR)/mkfifo.o: src/sys/stat/S_IFIFO.c
$(OBJDIR)/mkfifo.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/stat/mkfifo.c

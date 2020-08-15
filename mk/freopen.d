libc_C.1: libc.a(freopen.o)
libc.a(freopen.o): $(OBJDIR)/freopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/freopen.o: src/stdio/freopen.c
$(OBJDIR)/freopen.o: src/stdio/_stdio.h
$(OBJDIR)/freopen.o: src/fcntl/O_RDONLY.c
$(OBJDIR)/freopen.o: src/fcntl/O_WRONLY.c
$(OBJDIR)/freopen.o: src/fcntl/O_CREAT.c
$(OBJDIR)/freopen.o: src/fcntl/O_TRUNC.c
$(OBJDIR)/freopen.o: src/fcntl/O_APPEND.c
$(OBJDIR)/freopen.o: src/fcntl/O_RDWR.c
$(OBJDIR)/freopen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/freopen.c

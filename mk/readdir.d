libc_P.1: libc.a(readdir.o)
libc.a(readdir.o): $(OBJDIR)/readdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/readdir.o: src/dirent/readdir.c
$(OBJDIR)/readdir.o: src/dirent/_dirent.h
$(OBJDIR)/readdir.o: src/_syscall.h
$(OBJDIR)/readdir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/readdir.c

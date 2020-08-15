libc_P.1: libc.a(opendir.o)
libc.a(opendir.o): $(OBJDIR)/opendir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/opendir.o: src/dirent/opendir.c
$(OBJDIR)/opendir.o: src/dirent/_dirent.h
$(OBJDIR)/opendir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/opendir.c

libc_P.1: libc.a(closedir.o)
libc.a(closedir.o): $(OBJDIR)/closedir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/closedir.o: src/dirent/closedir.c
$(OBJDIR)/closedir.o: src/_assert.h
$(OBJDIR)/closedir.o: src/dirent/_dirent.h
$(OBJDIR)/closedir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/closedir.c

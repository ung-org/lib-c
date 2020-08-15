libc_P.1: libc.a(rewinddir.o)
libc.a(rewinddir.o): $(OBJDIR)/rewinddir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rewinddir.o: src/dirent/rewinddir.c
$(OBJDIR)/rewinddir.o: src/dirent/_dirent.h
$(OBJDIR)/rewinddir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/rewinddir.c

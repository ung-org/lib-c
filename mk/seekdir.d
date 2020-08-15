libc_X.4: libc.a(seekdir.o)
libc.a(seekdir.o): $(OBJDIR)/seekdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/seekdir.o: src/dirent/seekdir.c
$(OBJDIR)/seekdir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/seekdir.c

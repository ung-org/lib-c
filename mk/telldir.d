libc_X.4: libc.a(telldir.o)
libc.a(telldir.o): $(OBJDIR)/telldir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/telldir.o: src/dirent/telldir.c
$(OBJDIR)/telldir.o: src/dirent/_dirent.h
$(OBJDIR)/telldir.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dirent/telldir.c

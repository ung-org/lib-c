libc_P.2: libc.a(fnmatch.o)
libc.a(fnmatch.o): $(OBJDIR)/fnmatch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fnmatch.o: src/fnmatch/fnmatch.c
$(OBJDIR)/fnmatch.o: src/_assert.h
$(OBJDIR)/fnmatch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fnmatch/fnmatch.c

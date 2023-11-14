libc_X.500: libc.a(dlsym.o)
libc.a(dlsym.o): $(OBJDIR)/dlsym.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dlsym.o: src/dlfcn/dlsym.c
$(OBJDIR)/dlsym.o: src/dlfcn/_dlfcn.h
$(OBJDIR)/dlsym.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dlfcn/dlsym.c

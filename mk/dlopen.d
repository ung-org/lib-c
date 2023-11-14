libc_X.500: libc.a(dlopen.o)
libc.a(dlopen.o): $(OBJDIR)/dlopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dlopen.o: src/dlfcn/dlopen.c
$(OBJDIR)/dlopen.o: src/dlfcn/_dlfcn.h
$(OBJDIR)/dlopen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dlfcn/dlopen.c

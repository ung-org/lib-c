libc_X.500: libc.a(dlerror.o)
libc.a(dlerror.o): $(OBJDIR)/dlerror.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dlerror.o: src/dlfcn/dlerror.c
$(OBJDIR)/dlerror.o: src/dlfcn/_dlfcn.h
$(OBJDIR)/dlerror.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dlfcn/dlerror.c

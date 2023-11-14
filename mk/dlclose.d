libc_X.500: libc.a(dlclose.o)
libc.a(dlclose.o): $(OBJDIR)/dlclose.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dlclose.o: src/dlfcn/dlclose.c
$(OBJDIR)/dlclose.o: src/dlfcn/_dlfcn.h
$(OBJDIR)/dlclose.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/dlfcn/dlclose.c

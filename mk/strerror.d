libc_C.1: libc.a(strerror.o)
libc.a(strerror.o): $(OBJDIR)/strerror.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strerror.o: src/string/strerror.c
$(OBJDIR)/strerror.o: src/string/_strerror.h
$(OBJDIR)/strerror.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strerror.c

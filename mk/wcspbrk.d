libc_C.199409: libc.a(wcspbrk.o)
libc.a(wcspbrk.o): $(OBJDIR)/wcspbrk.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcspbrk.o: src/wchar/wcspbrk.c
$(OBJDIR)/wcspbrk.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcspbrk.c

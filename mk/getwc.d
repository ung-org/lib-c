libc_C.199409: libc.a(getwc.o)
libc.a(getwc.o): $(OBJDIR)/getwc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getwc.o: src/wchar/getwc.c
$(OBJDIR)/getwc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/getwc.c

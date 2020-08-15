libc_C.199409: libc.a(mbsinit.o)
libc.a(mbsinit.o): $(OBJDIR)/mbsinit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbsinit.o: src/wchar/mbsinit.c
$(OBJDIR)/mbsinit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/mbsinit.c

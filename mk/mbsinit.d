libc_C.199409: libc.a(mbsinit.o)
libc.a(mbsinit.o): $(OBJDIR)/mbsinit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbsinit.o: src/wchar/mbsinit.c
$(OBJDIR)/mbsinit.o: src/wchar/_wchar.h
$(OBJDIR)/mbsinit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/mbsinit.c

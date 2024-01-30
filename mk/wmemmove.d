libc_C.199409: libc.a(wmemmove.o)
libc.a(wmemmove.o): $(OBJDIR)/wmemmove.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemmove.o: src/wchar/wmemmove.c
$(OBJDIR)/wmemmove.o: src/_safety.h
$(OBJDIR)/wmemmove.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemmove.c

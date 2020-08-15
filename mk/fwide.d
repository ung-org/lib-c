libc_C.199409: libc.a(fwide.o)
libc.a(fwide.o): $(OBJDIR)/fwide.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwide.o: src/wchar/fwide.c
$(OBJDIR)/fwide.o: src/stdio/_stdio.h
$(OBJDIR)/fwide.o: src/_assert.h
$(OBJDIR)/fwide.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/fwide.c

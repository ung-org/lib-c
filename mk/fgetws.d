libc_C.199409: libc.a(fgetws.o)
libc.a(fgetws.o): $(OBJDIR)/fgetws.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fgetws.o: src/wchar/fgetws.c
$(OBJDIR)/fgetws.o: src/_assert.h
$(OBJDIR)/fgetws.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/fgetws.c

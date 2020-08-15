libc_C.199409: libc.a(iswalnum.o)
libc.a(iswalnum.o): $(OBJDIR)/iswalnum.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswalnum.o: src/wctype/iswalnum.c
$(OBJDIR)/iswalnum.o: src/_assert.h
$(OBJDIR)/iswalnum.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswalnum.c

libc_C.199409: libc.a(iswalpha.o)
libc.a(iswalpha.o): $(OBJDIR)/iswalpha.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswalpha.o: src/wctype/iswalpha.c
$(OBJDIR)/iswalpha.o: src/_safety.h
$(OBJDIR)/iswalpha.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswalpha.c

libc_C.1: libc.a(ispunct.o)
libc.a(ispunct.o): $(OBJDIR)/ispunct.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ispunct.o: src/ctype/ispunct.c
$(OBJDIR)/ispunct.o: src/_assert.h
$(OBJDIR)/ispunct.o: src/ctype/_ctype.h
$(OBJDIR)/ispunct.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/ispunct.c

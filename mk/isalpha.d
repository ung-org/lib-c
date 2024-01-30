libc_C.1: libc.a(isalpha.o)
libc.a(isalpha.o): $(OBJDIR)/isalpha.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isalpha.o: src/ctype/isalpha.c
$(OBJDIR)/isalpha.o: src/_safety.h
$(OBJDIR)/isalpha.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/ctype/isalpha.c

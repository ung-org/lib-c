libc_C.1: libc.a(isxdigit.o)
libc.a(isxdigit.o): $(OBJDIR)/isxdigit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isxdigit.o: src/ctype/isxdigit.c
$(OBJDIR)/isxdigit.o: src/ctype/_ctype.h
$(OBJDIR)/isxdigit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/isxdigit.c

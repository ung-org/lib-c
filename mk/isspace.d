libc_C.1: libc.a(isspace.o)
libc.a(isspace.o): $(OBJDIR)/isspace.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isspace.o: src/ctype/isspace.c
$(OBJDIR)/isspace.o: src/ctype/_ctype.h
$(OBJDIR)/isspace.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/isspace.c

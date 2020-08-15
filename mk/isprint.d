libc_C.1: libc.a(isprint.o)
libc.a(isprint.o): $(OBJDIR)/isprint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isprint.o: src/ctype/isprint.c
$(OBJDIR)/isprint.o: src/_assert.h
$(OBJDIR)/isprint.o: src/ctype/_ctype.h
$(OBJDIR)/isprint.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/isprint.c

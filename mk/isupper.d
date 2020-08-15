libc_C.1: libc.a(isupper.o)
libc.a(isupper.o): $(OBJDIR)/isupper.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isupper.o: src/ctype/isupper.c
$(OBJDIR)/isupper.o: src/_assert.h
$(OBJDIR)/isupper.o: src/ctype/_ctype.h
$(OBJDIR)/isupper.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/isupper.c

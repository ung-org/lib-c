libc_C.1: libc.a(strcspn.o)
libc.a(strcspn.o): $(OBJDIR)/strcspn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcspn.o: src/string/strcspn.c
$(OBJDIR)/strcspn.o: src/_assert.h
$(OBJDIR)/strcspn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strcspn.c

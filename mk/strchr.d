libc_C.1: libc.a(strchr.o)
libc.a(strchr.o): $(OBJDIR)/strchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strchr.o: src/string/strchr.c
$(OBJDIR)/strchr.o: src/_assert.h
$(OBJDIR)/strchr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strchr.c

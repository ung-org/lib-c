libc_C.1: libc.a(strcmp.o)
libc.a(strcmp.o): $(OBJDIR)/strcmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcmp.o: src/string/strcmp.c
$(OBJDIR)/strcmp.o: src/_safety.h
$(OBJDIR)/strcmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strcmp.c

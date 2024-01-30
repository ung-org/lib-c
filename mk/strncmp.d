libc_C.1: libc.a(strncmp.o)
libc.a(strncmp.o): $(OBJDIR)/strncmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncmp.o: src/string/strncmp.c
$(OBJDIR)/strncmp.o: src/_safety.h
$(OBJDIR)/strncmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strncmp.c

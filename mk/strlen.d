libc_C.1: libc.a(strlen.o)
libc.a(strlen.o): $(OBJDIR)/strlen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strlen.o: src/string/strlen.c
$(OBJDIR)/strlen.o: src/_safety.h
$(OBJDIR)/strlen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strlen.c

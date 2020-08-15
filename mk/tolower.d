libc_C.1: libc.a(tolower.o)
libc.a(tolower.o): $(OBJDIR)/tolower.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tolower.o: src/ctype/tolower.c
$(OBJDIR)/tolower.o: src/ctype/_ctype.h
$(OBJDIR)/tolower.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ctype/tolower.c

libc_C.1: libc.a(strcoll.o)
libc.a(strcoll.o): $(OBJDIR)/strcoll.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcoll.o: src/string/strcoll.c
$(OBJDIR)/strcoll.o: src/_safety.h
$(OBJDIR)/strcoll.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strcoll.c

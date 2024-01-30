libc_C.1: libc.a(strrchr.o)
libc.a(strrchr.o): $(OBJDIR)/strrchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strrchr.o: src/string/strrchr.c
$(OBJDIR)/strrchr.o: src/_safety.h
$(OBJDIR)/strrchr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strrchr.c

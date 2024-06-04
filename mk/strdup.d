libc_C.0: libc.a(strdup.o)
libc.a(strdup.o): $(OBJDIR)/strdup.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strdup.o: src/string/strdup.c
$(OBJDIR)/strdup.o: src/_safety.h
$(OBJDIR)/strdup.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strdup.c

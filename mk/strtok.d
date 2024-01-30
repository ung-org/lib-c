libc_C.1: libc.a(strtok.o)
libc.a(strtok.o): $(OBJDIR)/strtok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtok.o: src/string/strtok.c
$(OBJDIR)/strtok.o: src/_safety.h
$(OBJDIR)/strtok.o: src/string/_strtok.h
$(OBJDIR)/strtok.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strtok.c

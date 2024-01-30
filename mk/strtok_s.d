libc_C_X1.201112: libc.a(strtok_s.o)
libc.a(strtok_s.o): $(OBJDIR)/strtok_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtok_s.o: src/string/strtok_s.c
$(OBJDIR)/strtok_s.o: src/_safety.h
$(OBJDIR)/strtok_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strtok_s.c

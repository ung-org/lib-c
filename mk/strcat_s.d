libc_C_X1.201112: libc.a(strcat_s.o)
libc.a(strcat_s.o): $(OBJDIR)/strcat_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcat_s.o: src/string/strcat_s.c
$(OBJDIR)/strcat_s.o: src/_safety.h
$(OBJDIR)/strcat_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strcat_s.c

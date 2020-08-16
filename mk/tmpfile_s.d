libc_C_X1.201112: libc.a(tmpfile_s.o)
libc.a(tmpfile_s.o): $(OBJDIR)/tmpfile_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tmpfile_s.o: src/stdio/tmpfile_s.c
$(OBJDIR)/tmpfile_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/tmpfile_s.c

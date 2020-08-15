libc_X.4: libc.a(putw.o)
libc.a(putw.o): $(OBJDIR)/putw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putw.o: src/stdio/putw.c
$(OBJDIR)/putw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/putw.c

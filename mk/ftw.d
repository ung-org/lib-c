libc_X.4: libc.a(ftw.o)
libc.a(ftw.o): $(OBJDIR)/ftw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ftw.o: src/ftw/ftw.c
$(OBJDIR)/ftw.o: src/ftw/_ftw.h
$(OBJDIR)/ftw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ftw/ftw.c

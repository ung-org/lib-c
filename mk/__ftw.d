libc_C.0: libc.a(__ftw.o)
libc.a(__ftw.o): $(OBJDIR)/__ftw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__ftw.o: src/ftw/__ftw.c
$(OBJDIR)/__ftw.o: src/ftw/_ftw.h
$(OBJDIR)/__ftw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ftw/__ftw.c

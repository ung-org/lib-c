libc_X.400: libc.a(getgrent.o)
libc.a(getgrent.o): $(OBJDIR)/getgrent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getgrent.o: src/grp/getgrent.c
$(OBJDIR)/getgrent.o: src/_config.h
$(OBJDIR)/getgrent.o: src/grp/_grp.h
$(OBJDIR)/getgrent.o: 
$(OBJDIR)/getgrent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/grp/getgrent.c

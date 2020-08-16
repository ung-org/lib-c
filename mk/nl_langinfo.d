libc_P.200809: libc.a(nl_langinfo.o)
libc_X.4: libc.a(nl_langinfo.o)
libc.a(nl_langinfo.o): $(OBJDIR)/nl_langinfo.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nl_langinfo.o: src/langinfo/nl_langinfo.c
$(OBJDIR)/nl_langinfo.o: 
$(OBJDIR)/nl_langinfo.o: 
$(OBJDIR)/nl_langinfo.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/langinfo/nl_langinfo.c

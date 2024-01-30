libc_X.4: libc.a(wcwidth.o)
libc.a(wcwidth.o): $(OBJDIR)/wcwidth.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcwidth.o: src/wchar/wcwidth.c
$(OBJDIR)/wcwidth.o: 
$(OBJDIR)/wcwidth.o: 
$(OBJDIR)/wcwidth.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcwidth.c

libc_C.199409: libc.a(wcstoul.o)
libc.a(wcstoul.o): $(OBJDIR)/wcstoul.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstoul.o: src/wchar/wcstoul.c
$(OBJDIR)/wcstoul.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstoul.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstoul.c

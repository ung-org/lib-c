libc_C.199409: libc.a(swscanf.o)
libc.a(swscanf.o): $(OBJDIR)/swscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swscanf.o: src/wchar/swscanf.c
$(OBJDIR)/swscanf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/swscanf.c

libc_C.199409: libc.a(btowc.o)
libc.a(btowc.o): $(OBJDIR)/btowc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/btowc.o: src/wchar/btowc.c
$(OBJDIR)/btowc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/btowc.c

libc_C.199409: libc.a(mbrtowc.o)
libc.a(mbrtowc.o): $(OBJDIR)/mbrtowc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbrtowc.o: src/wchar/mbrtowc.c
$(OBJDIR)/mbrtowc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/mbrtowc.c

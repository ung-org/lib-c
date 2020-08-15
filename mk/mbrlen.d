libc_C.199409: libc.a(mbrlen.o)
libc.a(mbrlen.o): $(OBJDIR)/mbrlen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbrlen.o: src/wchar/mbrlen.c
$(OBJDIR)/mbrlen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/mbrlen.c

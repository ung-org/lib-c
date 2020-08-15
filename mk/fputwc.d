libc_C.199409: libc.a(fputwc.o)
libc.a(fputwc.o): $(OBJDIR)/fputwc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fputwc.o: src/wchar/fputwc.c
$(OBJDIR)/fputwc.o: src/stdio/_stdio.h
$(OBJDIR)/fputwc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/fputwc.c

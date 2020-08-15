libc_C.199901: libc.a(vwscanf.o)
libc.a(vwscanf.o): $(OBJDIR)/vwscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vwscanf.o: src/wchar/vwscanf.c
$(OBJDIR)/vwscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vwscanf.c

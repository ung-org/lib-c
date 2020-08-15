libc_C.199901: libc.a(vswscanf.o)
libc.a(vswscanf.o): $(OBJDIR)/vswscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vswscanf.o: src/wchar/vswscanf.c
$(OBJDIR)/vswscanf.o: src/stdio/_stdio.h
$(OBJDIR)/vswscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vswscanf.c

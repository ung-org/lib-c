libc_C.199901: libc.a(vfwscanf.o)
libc.a(vfwscanf.o): $(OBJDIR)/vfwscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfwscanf.o: src/wchar/vfwscanf.c
$(OBJDIR)/vfwscanf.o: src/stdio/_stdio.h
$(OBJDIR)/vfwscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vfwscanf.c

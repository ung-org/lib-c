libc_C.1: libc.a(sscanf.o)
libc.a(sscanf.o): $(OBJDIR)/sscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sscanf.o: src/stdio/sscanf.c
$(OBJDIR)/sscanf.o: src/stdio/_stdio.h
$(OBJDIR)/sscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/sscanf.c

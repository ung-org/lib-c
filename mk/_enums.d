libc_C.201112: libc.a(_enums.o)
libc.a(_enums.o): $(OBJDIR)/_enums.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_enums.o: src/threads/_enums.c
$(OBJDIR)/_enums.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/_enums.c

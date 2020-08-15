libc_C.201112: libc.a(tss_create.o)
libc.a(tss_create.o): $(OBJDIR)/tss_create.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tss_create.o: src/threads/tss_create.c
$(OBJDIR)/tss_create.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/tss_create.c
